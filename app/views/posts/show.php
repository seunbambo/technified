<?php require APPROOT . '/views/inc/header.php'; ?>

    <a href="<?php echo URLROOT; ?>" class="btn btn-light"><i class="fa fa-arrow-circle-left"></i> Back</a>
    <br><br>
    <h1>Post Details</h1>
    <div class="card card-body bg-light mt-5">
        <h2><?php echo $data['post']->title; ?></h2>
        <div class="bg-secondary text-white p-2 mb-3">
            Registered by: <?php echo $data['user']->name; ?> on <?php echo $data['post']->created_at; ?>
        </div>
        <p><?php echo $data['post']->body; ?></p>
    </div>

    <?php if ($data['post']->user_id == $_SESSION['user_id']) : ?>
        <hr>
        <a href="<?php echo URLROOT; ?>/posts/edit/<?php echo $data['post']->id; ?>" class="btn btn-dark">
        Edit</a>

        <form class="pull-right" action="<?php echo URLROOT; ?>/posts/delete/<?php echo $data['post']->id; ?>" method="POST">
            <input type="submit" value="Delete" class="btn btn-danger">
        </form>
    <?php endif; ?>

<?php require APPROOT . '/views/inc/footer.php'; ?> 