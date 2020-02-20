<%@ Page Title="" Language="C#" MasterPageFile="~/IndexPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    Opticron
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
    <link href="css/app.css" rel="stylesheet" />
    <link href="css/site.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="orbit" role="region" aria-label="Favorite Space Pictures" data-orbit>
        <div class="orbit-wrapper">
            <div class="orbit-controls">
                <button class="orbit-previous"><span class="show-for-sr">Previous Slide</span>&#9664;&#xFE0E;</button>
                <button class="orbit-next"><span class="show-for-sr">Next Slide</span>&#9654;&#xFE0E;</button>
            </div>
            <ul class="orbit-container">
                <li class="is-active orbit-slide">
                    <figure class="orbit-figure">
                        <img class="orbit-image" src="img/stalk-863823_1280.jpg" />
                    </figure>
                </li>
                <li class="orbit-slide">
                    <figure class="orbit-figure">
                        <img class="orbit-image" src="img/land-rover-412665_1280.jpg" />
                    </figure>

                </li>
                <li class="orbit-slide">
                    <figure class="orbit-figure">
                        <img class="orbit-image" src="img/man-4085657_1280.jpg" />
                    </figure>
                </li>

            </ul>
        </div>
        <nav class="orbit-bullets">
            <button class="is-active" data-slide="0">
                <span class="show-for-sr">First slide details.</span>
                <span class="show-for-sr" data-slide-active-label>Current Slide</span>
            </button>
            <button data-slide="1"><span class="show-for-sr">Second slide details.</span></button>
            <button data-slide="2"><span class="show-for-sr">Third slide details.</span></button>
        </nav>
    </div>
    <!--Session 1-->
    

    <div class="grid-x grid-margin-x small-up-2 medium-up-2 large-up-4" id="session1">
        <div class="cell">
            <div class="callout">
                <asp:textBox runat="server" ID="txtTitle"></asp:textBox>
                <p>                       
                    <img src="/img/man-4085657_1280.jpg"  runat="server" id="ContentIMG"/>
                </p>

               <p class="lead"> <textarea id="txtDesc">

                </textarea></p>
                <p class="lead" >
                    is simply dummy text of the printing and typesetting industry.
                        text ever since the 1500s, when an unknown printer took a galley of type and scrambled
                </p>
                <a href="#" class="button expanded">New Products</a>
            </div>
        </div>
        <div class="cell">
            <div class="callout">
                <p>Field Events</p>
                <p>
                    <img src="img/man-4085657_1280.jpg" />
                </p>
                <p class="lead">
                    is simply dummy text of the printing and typesetting industry. 
                        text ever since the 1500s, when an unknown printer took a galley of type and scrambled
                </p>
                <a href="#" class="button expanded">View Events</a>
            </div>
        </div>
        <div class="cell">
            <div class="callout">
                <p>Latest News</p>
                <p>
                    <img src="img/man-4085657_1280.jpg" />
                </p>
                <p class="lead">
                    is simply dummy text of the printing and typesetting industry.
                        text ever since the 1500s, when an unknown printer took a galley of type and scrambled 
                </p>
                <a href="#" class="button expanded">Read Article</a>
            </div>
        </div>
        <div class="cell">
            <div class="callout">
                <p>Gallery</p>
                <p>
                    
                    <img src="img/man-4085657_1280.jpg" />
                </p>
                <p class="lead">
                    is simply dummy text of the printing and typesetting industry.
                        text ever since the 1500s, when an unknown printer took a galley of type and scrambled
                </p>
                <a href="#" class="button expanded">View Gallery</a>
            </div>
        </div>

    </div>

    <!--session2-->
    <div class="text-center">
        <p class="lead">
            Special Offers 
        </p>

    </div>
    <div class="grid-x grid-margin-x small-up-2 medium-up-2 large-up-4" id="session2">
    </div>

    <!--session3-->

    <div class="callout secondary" id="products">
        <div class="text-center">
            <p class="lead">
                Product Categories
            </p>

        </div>
        <div class="grid-x grid-padding-x small-up-4" id="session3">

            <div class="cell">
                <img src="img/land-rover-412665_1280.jpg" />
                <p class="lead">Observation & Marine</p>
            </div>
            <div class="cell">
                <img src="img/land-rover-412665_1280.jpg" />
                <p class="lead">Telescopes & Eyepieces</p>
            </div>
            <div class="cell">
                <img src="img/land-rover-412665_1280.jpg" />
                <p class="lead">Compact Binoculars</p>
            </div>
            <div class="cell">
                <img src="img/land-rover-412665_1280.jpg" />

                <p class="lead">Binoculars</p>
            </div>
        </div>

        <div class="row">
            <div class="small-6 small-centered text-center columns">
                <a href="#" class="button">View All Offers</a>
            </div>
        </div>

    </div>


    <footer>
        <div class="grid-x callout secondary text-center">

            <div class="columns medium-6 medium-push-6">
                <p>
                    <a href="#">Opticron</a>Unit 21, Titan Court, Laporte Way, Luton,
                    Bedfordshire, LU4 8EF, UK
                </p>
                <div class="row">
                    <div class="columns text-center">
                            <ul class="breadcrumbs text
                                -center">
                                <li><a href="#">Site Map</a></li>
                                <li><a href="#">Terms</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                                <li><a href="#">Site By Verto</a></li>

                            </ul>
                       
                    </div>

                </div>

            </div>
            <div class="columns medium-6 medium-pull-6">
                <p class="lead">call 01582726522</p>

                <div>
                    <a href="#" class="fc-webicon facebook">Like us on Facebook</a>
                </div>

            </div>


        </div>



    </footer>



</asp:Content>
