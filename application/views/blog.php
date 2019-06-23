<?php $this->load->view('partials/header'); ?>

<!-- Page Header -->
<header class="masthead" style="background-image: url('<?php echo base_url(); ?>assets/img/home-bg.jpg')">
    <div class="overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-10 mx-auto">
                <div class="site-heading">
                    <h1>Selamat Datang</h1>
                    <span class="subheading">Website diary Toni Haryanto</span>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Main Content -->
<div class="container">
    <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">

            <?php echo $this->session->flashdata('message'); ?>

            <form>
                <input type="text" name="find">
                <button type="submit">Cari</button>
            </form>

            <?php foreach ($blogs as $key => $blog) : ?>
            <div class="post-preview">
                <a href="<?php echo site_url('blog/detail/' . $blog['url']); ?>">
                    <h2 class="post-title">
                        <?php echo $blog['title']; ?>
                    </h2>
                </a>
                <p class="post-meta">
                    Posted on <?php echo $blog['date']; ?>

                    <?php if (isset($_SESSION['username'])) : ?>
                    <a href="<?php echo site_url('blog/edit/' . $blog['id']); ?>">Edit</a>
                    <a href="<?php echo site_url('blog/delete/' . $blog['id']); ?>" onclick="return confirm('Apa kamu yakin akan menghapus? serius?')">Delete</a>
                    <?php endif; ?>

                </p>

                <?php echo $blog['content']; ?>
            </div>
            <hr>
            <?php endforeach; ?>


            <?php echo $this->pagination->create_links(); ?>

        </div>
    </div>
</div>

<hr>

<?php $this->load->view('partials/footer'); ?> 