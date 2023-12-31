<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Annonces</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='../../../assets/css/leboncoin.css'>
    <!-- <script defer src='../../../assets/js/annonce.js'></script> -->
    <!-- add fontawesom icons -->
    <script src="https://kit.fontawesome.com/df14dc0e3c.js" crossorigin="anonymous"></script>
</head>
<body>
    <?php
        require_once $_SERVER['DOCUMENT_ROOT'].'/RT/A23/config.php';
        include_once DIR_BASE.'layout/LeboncoinNav.php';
        require_once DIR_BASE.'controllers/AnnoncesController.php';
        
        if (isset($_GET['id'])) {
            $id = $_GET['id'];
            $annonce = getAnnonce($id);
            if ($annonce == null) {
                header('Location: index.php');
            }
        } else {
            header('Location: index.php');
        }

        if ($annonce["image"] == null) {
            $annonce["image"] = 'Labo.png';
        }
        $isOwner = checkOwnerAnnonce($annonce["idannonce"]);
        $vendeur = getVendeur($annonce["idrefetu"]);
        $profilepic = getProfilePic($annonce["idrefetu"]);
        $condition = getCondition($annonce["idrefcondition"]);
        $type = getAnnonceType($annonce["idreftype"]);
        $etat = getEtat($annonce["idrefetatannonce"]);
        $statut = getStatut($annonce["idrefetatannonce"], $annonce["stock"], true);
        $nbAnnonce = getNbAnnoncesParVendeur($annonce["idrefetu"]);
        // show the annonce
        echo '<div class="annonce-container">';
        echo '<div class="annonce">';
        echo '<div class="annonce-body">';
        echo '<div class="annonce-body-left">';
        echo '<img src="../../../upload/'.$annonce["image"].'" alt="image">';
        echo '<h1>'.$annonce["nom"].'</h1>';
        echo '<p>'.$annonce["prix"].' €</p>';
        echo '</div>';
        echo '<div class="annonce-body-right">';
        echo '<div class="annonce-vendeur" name="'.$annonce["idrefetu"].'">';
        echo '<div class="annonce-vendeur-id">';
        if ($profilepic != null) {
            echo '<img src="../../../upload/users/'.$profilepic.'" alt="image">';
        } else {
            echo '<img src="../../../assets/img/user.png" alt="image">';
        }
        echo '<div class="annonce-vendeur-id-info">';
        echo '<h2>'.$vendeur.'</h2>';
        echo '<p>'.$nbAnnonce.' annonces</p>';
        echo '</div>';
        echo '</div>';
        echo '<hr>';
        if ($isOwner) {
            echo '<button class="annonce-vendeur-btn" onclick="window.location.href=\'edit.php?id='.$annonce["idannonce"].'\'">Modifier</button>';
            echo '<button class="annonce-vendeur-btn" onclick="window.location.href=\'delete.php?id='.$annonce["idannonce"].'\'">Supprimer</button>';
            echo '<button class="annonce-vendeur-btn" onclick="window.location.href=\'activer.php?id='.$annonce["idannonce"].'\'">Ne plus afficher</button>';
        } else if ($statut == "Rupture de stock") {
            echo '<button class="annonce-vendeur-btn" disabled>Rupture de stock</button>';
        } else {
            echo '<button class="annonce-vendeur-btn" onclick="window.location.href=\'reservation.php?id='.$annonce["idannonce"].'\'">Reserver</button>';
        }
        echo '</div>';
        echo '</div>';
        echo '</div>';
        echo '<hr>';
        echo '<h2>Details:</h2>';    
        echo '<div class="annonce-footer">';
        echo '<div class="annonce-footer-left">';
        echo '<p>Type: '.$type.'</p>';
        echo '<p>Date d\'Ajout: '.$annonce["datecreation"].'</p>';
        echo '</div>';
        echo '<div class="annonce-footer-right">';
        echo '<p>Condition: '.$condition.'</p>';
        if ($isOwner) {
            echo '<p>Statut: '.$etat.'</p>';
        } else {
            echo '<p>Statut: '.$statut.'</p>';
        }
        echo '</div>';
        echo '</div>';
        echo '<hr>';
        echo '<h2>Description:</h2>';
        echo '<p>'.$annonce["description"].'</p>';
        echo '</div>';
        echo '</div>';
    ?>
</body>
</html>