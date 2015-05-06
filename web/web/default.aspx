<%@ Page Title="" Language="C#" ClientIDMode="Static" MasterPageFile="~/masterpace.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.QueryString["logout"] != null) {
            Session.Abandon();
        }
    }
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header Carousel -->
    <header id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="fill" style="background-image: url('http://placehold.it/1900x1080&text=Slide One');">
                    <img src="image/masterslider/box.jpg" class="img img-responsive" />
                </div>
                <div class="carousel-caption">
                    <h2></h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image: url('http://placehold.it/1900x1080&text=Slide Two');">

                    <img src="image/masterslider/house.jpg" class="img img-responsive" />
                </div>
                <div class="carousel-caption">
                    <h2></h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image: url('http://placehold.it/1900x1080&text=Slide Three');">

                    <img src="image/masterslider/bottle.jpg" class="img img-responsive" />
                </div>
                <div class="carousel-caption">
                    <h2></h2>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="icon-prev"></span></a><a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="icon-next"></span></a>
    </header>
    <!-- Page Content -->
    <div class="container">

        <!-- Marketing Icons Section -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Welcome to Creativity by Hand </h1>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="glyphicon glyphicon-fire"></i>Creativity</h4>
                    </div>
                    <div class="panel-body">
                        <p>
                            Creativity is based on the mind of the brain itself. Using materials which is taken for granted, and using those materials to create something creative and useful.
                            <br />
                            <br />
                            An example for this could be the boxes made into drawers, which is a cheap and free method to create something useful. Test your limits and use  your creativity.
                        </p>
                        <a href="about.aspx" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="glyphicon glyphicon-grain"></i>Beauty Designs</h4>
                    </div>
                    <div class="panel-body">
                        <p>
                            Beauty Designs is based on thoughts and feelings. Have you ever had this feeling of having a vision of something beautyful, and imagine how it is possible to create something beautiful?
                            <br />
                            <br />
                            Everyone is able to create beautiful creations, it's just about the willing of doing so, to make something you think is beautiful. It's a cheap method to create beauty.
                        </p>
                        <a href="about.aspx" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="glyphicon glyphicon-sort"></i>Upcycling</h4>
                    </div>
                    <div class="panel-body">
                        <p>Upcycling is the process of converting waste materials or useless products into new materials or products of better quality or for better environmental value.
                            <br />
                            <br />
                            Upcycling is the opposite of downcycling, which is the other half of the recycling process. Downcycling involves converting materials and products into new materials of lesser quality. </p>
                        <a href="about.aspx" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->
        <!-- Portfolio Section -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Previews</h2>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img src="image/previews/barrel.jpg" class="img img-responsive img-portfolio img-hover" />
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img src="image/previews/cases.jpg" class="img img-responsive img-portfolio img-hover" />
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img src="image/previews/dress.jpg" class="img img-responsive img-portfolio img-hover" />
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img src="image/previews/hardware.jpg" class="img img-responsive img-portfolio img-hover" />
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img src="image/previews/hooks.jpg" class="img img-responsive img-portfolio img-hover" />
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img src="image/previews/house2.jpg" class="img img-responsive img-portfolio img-hover" />
                </a>
            </div>
        </div>
        <!-- /.row -->
        <!-- Features Section -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Benefits by Upcycling</h2>
            </div>
            <div class="col-md-6">
                <p>List of useful knowledge</p>
                <ul>
                    <li>Minimising the volume of discarded materials </li>
                    <li>Waste being sent to landfill each year</li>
                    <li>reduces the need for production</li>
                    <li>reduction in air pollution</li>
                    <li>reduction in water pollution</li>
                    <li>reduction in greenhouse gas emissions</li>
                    <li>conservation of global resources</li>
                </ul>
                <p>
                    The environmental benefits of Upcycling are mammoth, aside from minimising the volume of discarded materials and waste being sent to landfill each year, it also reduces the need for production using new or raw materials which means a reduction in air pollution, water pollution, greenhouse gas emissions and often a conservation of global resources.
                    <br />
                    <br />
                    While the environmental benefits are easily identified the social and personal benefits for both the designer/producer and the consumer are enormous also. This new production and material sourcing method has formed an entirely new industry both in small rural village communities as well as boutique niche businesses around the western world.
                </p>
            </div>
            <div class="col-md-6">
                <<img src="image/upcycling.png" class="img img-responsive" />>
            </div>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Call to Action Section -->
        <div class="well">
            <div class="row">
                <div class="col-md-8">
                    <p>We show the world the vision of upcycling, and how useful upcycling is for the enviroment, help us to push upcycling forward, post a picture of your upcycling creations and ideas.</p>
                </div>
                <div class="col-md-4"><a class="btn btn-lg btn-default btn-block" href="#">Save the World!</a> </div>
            </div>
        </div>
        <hr>
        </div>
</asp:Content>
