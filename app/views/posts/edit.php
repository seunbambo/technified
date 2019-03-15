<?php require APPROOT . '/views/inc/header.php'; ?>
<a href="<?php echo URLROOT; ?>" class="btn btn-light"><i class="fa fa-arrow-circle-left"></i> Back</a>
<div class="card card-body bg-light mt-5">
    <h2>Add Post</h2>
    <p>Create a post here</p>
    <form action="<?php echo URLROOT; ?>/posts/edit/<?php echo $data['id']; ?>" method="POST">

        <div class="form-group">
            <label for="name">Title: <sup>*</sup></label>
            <input type="title" name="title" class="form-control form-control-lg <?php echo (!empty($data['title_err'])) ? 'is-invalid' : ''; ?>" value="<?php echo $data['title']; ?>">
            <span class="invalid-feedback"><?php echo $data['title_err']; ?></span>
        </div>
        <div class="form-group">
            <label for="name">Body: <sup>*</sup></label>
            <textarea name="body" class="form-control form-control-lg <?php echo (!empty($data['body_err'])) ? 'is-invalid' : ''; ?>" value="">
                    <?php echo $data['body']; ?>
                </textarea>
            <span class="invalid-feedback"><?php echo $data['body_err']; ?></span>
        </div>
        <input type="submit" class="btn btn-success" value="Submit">
    </form>
</div>
<?php require APPROOT . '/views/inc/footer.php'; ?> 