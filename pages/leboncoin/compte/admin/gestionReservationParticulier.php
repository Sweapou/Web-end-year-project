<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <title>Réservation</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='../../../../assets/css/leboncoin.css'>
    <!-- <script defer src='../../../assets/js/annonce.js'></script> -->
    <!-- add fontawesom icons -->
    <script src="https://kit.fontawesome.com/df14dc0e3c.js" crossorigin="anonymous"></script>
</head>
<body>
    <?php
        require_once $_SERVER['DOCUMENT_ROOT'].'/RT/A23/config.php';
        include_once DIR_BASE.'layout/LeboncoinNav.php';
        require_once DIR_BASE.'controllers/AnnoncesController.php';
        require_once DIR_BASE.'controllers/ReservationController.php';
        
        if (isset($_GET['id'])) {
            $id = $_GET['id'];
            $commande = getCommande($id);
            if ($commande == null) {
                header('Location: annonces.php');
            }
        } else {
            header('Location: annonces.php');
        }

        if ($commande->image == null) {
            $commande->image = 'Labo.png';
        }
        if(isset($_POST['etatresa'])&&isset($_GET['id'])){
            $etat = $_POST['etatresa'];
            $id = $_GET['id'];
            updateEtatReservation($id, $etat);
            header('Location: gestionReservationParticulier.php?id='.$commande->idreservation.'');
        }
        $vendeur = getVendeur($commande->idrefvendeur);
        $profilepic = getProfilePic($commande->idrefvendeur);
        $condition = getCondition($commande->idrefcondition);
        $type = getAnnonceType($commande->idreftype);
        $etat = getEtat($commande->idrefetatannonce);
        $nbAnnonce = getNbAnnoncesParVendeur($commande->idrefetu);
        $etatReservation = getEtatReservation($commande->idrefetatreservation);
        $couleurEtatReservation = getEtatColor($commande->idrefetatreservation);
        echo '<div class="annonce-container">';
        echo '<div class="annonce">';
        echo '<div class="annonce-body">';
        echo '<div class="annonce-body-left">';
        echo '<img src="../../../../upload/'.$commande->image.'" alt="image">';
        echo '<h1>'.$commande->nom.'</h1>';
        echo '<p>'.$commande->prix.' €</p>';
        echo '</div>';
        echo '<div class="annonce-body-right">';
        echo '<div class="annonce-vendeur" name="'.$commande->idrefetu.'">';
        echo '<div class="annonce-vendeur-id">';
        if ($profilepic != null) {
            echo '<img src="../../../../upload/users/'.$profilepic.'" alt="image">';
        } else {
            echo '<img src="../../../../assets/img/user.png" alt="image">';
        }
        echo '<div class="annonce-vendeur-id-info">';
        echo '<h2>'.$vendeur.'</h2>';
        echo '<p>'.$nbAnnonce.' annonces</p>';
        echo '</div>';
        echo '</div>';
        echo '<hr>';
        echo '<a class="reservation-statut" style="background-color:'.$couleurEtatReservation.'">'.$etatReservation.'</a>';
        echo '<button class="annonce-vendeur-btn" onclick="window.location.href=\'../annonces/annonce.php?id='.$commande->idannonce.'\'">Afficher Annonce</button>';
        echo '<form method="post" action="gestionReservationParticulier.php?id='.$commande->idreservation.'">';
        echo '<select class="reservation-statut-select" name="etatresa">';
        $EtatdesAnnonces=getEtatsReservation();
        foreach ($EtatdesAnnonces as $etatactu) {
            echo $etatactu;
            if ($etatactu["idetat"] == $commande->idrefetatreservation) {
                echo '<option value="'.$etatactu["idetat"].'" selected>'.$etatactu["nometat"].'</option>';
            } else {
                echo '<option value="'.$etatactu["idetat"].'">'.$etatactu["nometat"].'</option>';
            }
        }
        echo '</select>';
        echo '<button class="annonce-vendeur-btn" type="submit" name="submit">Modifier</button>';
        echo '</form>';
        echo '</div>';
        echo '</div>';
        echo '</div>';
        echo '<hr>';
        echo '<h2>Details:</h2>';    
        echo '<div class="annonce-footer">';
        echo '<div class="annonce-footer-left">';
        echo '<p>Type: '.$type.'</p>';
        echo '<p>Date d\'Ajout: '.$commande->datecreationreservation.'</p>';
        echo '</div>';
        echo '<div class="annonce-footer-right">';
        echo '<p>Condition: '.$condition.'</p>';
        echo '<p>Statut: '.$etat.'</p>';
        echo '</div>';
        echo '</div>';
        echo '<hr>';
        echo '<h2>Description:</h2>';
        echo '<p>'.$commande->description.'</p>';
        echo '</div>';
        echo '</div>';
    ?>
</body>
</html>