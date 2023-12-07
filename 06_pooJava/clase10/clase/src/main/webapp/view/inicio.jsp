<!doctype html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <link rel="stylesheet" href="css/inteBoot.css">
</head>

<body>
	<%
	ConexionDB conex=new ConexionDB();
	Statement st=conex.conectar();
	ResultSet rs;

	String id=request.getParameter("id");
	String na=new String();
	String foto=new String();
	if(id!=null) {
		
		rs=st.executeQuery("SELECT * FROM usuarios WHERE id="+id);
		rs.next();
		na=rs.getString("nombre") + " "+ rs.getString("apellido");
		foto=rs.getString("fotoPerfil");
	}		
	%>

    <!-- menu -->
    <nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand d-none d-sm-block" href="#">
                <img src="images/codoacodo.png" alt="codo" class="w-25" >
                Conf BsAs
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText"
                aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarText">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                   
                </ul>
                <span class="navbar-text">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <img alt="" src="<% out.print(foto); %>" class="img-fluid rounded-4 " width="40px">
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">La Conferencia</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Oradores</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-success" href="ticket/comprarTicket.html">Comprar Tickets</a>
                        </li>
                    </ul>
                </span>
            </div>
        </div>
    </nav>

    <!-- carrusel -->
    <div>
        <div id="carouselExampleCaptions" class="carousel slide">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                    aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                    aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/ba1.jpg" class="d-block w-100 brilloOscuro" alt="b">
                    <div class="carousel-caption d-block">
                        <div class="row mb-3">
                            <div class="col-0 col-lg-4">

                            </div>
                            <div class="col-12 col-lg-8  text-center text-lg-end ">
                                <h5 class="fs-3">Conf Bs As</h5>
                                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Facere asperiores, eveniet inventore nobis
                                    pariatur quas, labore ut expedita repellendus itaque cumque odio distinctio maxime ipsam eum dolorum
                                    reprehenderit ratione unde.</p>
                                <div class="mb-4 d-none d-md-block">
                                    <a href="" class="btn btn-outline-light">Quiero ser orador</a>
                                    <a href="" class="btn btn-success">Comprar Ticket</a>
                                </div>
        
                            </div>
                        </div>

                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/ba2.jpg" class="d-block w-100 brilloOscuro" alt="a">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Second slide label</h5>
                        <p>Some representative placeholder content for the second slide.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/ba3.jpg" class="d-block w-100 brilloOscuro" alt="c">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Third slide label</h5>
                        <p>Some representative placeholder content for the third slide.</p>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        
    </div>


    <!-- oradores -->
    <div class="text-center m-1">
        <div class="textoChico mt-3">
            CONOCE A LOS 
        </div>
        <div class="fs-5">
            ORADORES
        </div>
    </div>

    <div class="d-flex justify-content-center flex-wrap">

		<%
		rs=st.executeQuery("SELECT * FROM oradores");
        while(rs.next()) {
        	out.println("<div class='card mx-1 mb-3' style='width: 18rem;'>");
        	out.println("<img src='"+rs.getString("fotoPerfil")+"' class='card-img-top' alt='"+rs.getString("nombre")+"'>");
        	out.println("<div class='card-body'>");
        	out.println("<div class='botones mb-3'>");
        	out.println("<a href='#' class='btn btn-sm btn-warning'>Javascript</a>");
        	out.println("<a href='#' class='btn btn-sm btn-info text-light'>React</a>");
        	out.println("</div>");
        	out.println("<h5 class='card-title'>"+rs.getString("nombre") +" "+ rs.getString("apellido") +"</h5>");
        	out.println("<p class='card-text'>"+rs.getString("temas")+"</p>");
        	out.println("</div>");
        	out.println("</div>");
        }
		
		%>


        

    </div>

    <div class="container-fluid">
        <div class="row ">
            <div class="col-lg p-0">
                <img src="images/honolulu.jpg" alt="honolulu" class="img-fluid">
            </div>
            <div class="col-lg bgGrisOscuro text-white">
                <div class="fs-4 mt-1 mb-3 mt-4">
                    BsAs - Octubre
                </div>
                <div class="mb-3">
                    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eligendi eos voluptates quo esse consectetur aut, cupiditate voluptas laborum. Animi a architecto unde, commodi itaque enim asperiores iste consequuntur excepturi vel.
                </div>
                <div class="mb-3">
                    <a href="#" class="btn btn-outline-light">Conocé más</a>
                </div>


            </div>
        </div>
    </div>

    <!-- formulario orador -->
    <div class="container text-center">
        <div class="mb-1 mt-3">
            CONVIÉRTETE EN UN
        </div>
        <div class="fs-2 mb-3">
            ORADOR
        </div>
        <form action="server/procesarCompTicket.html" method="post">
            <div class="row">
                <div class="col-md mb-3">
                    <input type="text" name="nombre" id="nombre" placeholder="Nombre" class="form-control">
                </div>
                <div class="col-md mb-3">
                    <input type="text" name="apellido" id="apellido" placeholder="apellido" class="form-control">

                </div>
            </div>
            <div class="row">
                <div class="col mb-3">
                    <textarea name="" id="" rows="5" class="form-control"></textarea>
                </div>
            </div>
            <div class="row mb-3">
                <input type="submit" value="Enviar" class="btn btn-primary">
            </div>
        </form>
    </div>

    <!-- footer -->
    <div class="bg-dark text-light" style="height: 50px;">
        <div class="d-flex justify-content-around align-items-center ">
            <a href="" class="text-decoration-none text-light">link 1</a>
            <a href="" class="text-decoration-none text-light">link 2</a>
            <a href="" class="text-decoration-none text-light">link 3</a>
            <a href="" class="text-decoration-none text-light">link 4</a>
            <a href="" class="text-decoration-none text-light">link 5</a>
            <a href="" class="text-decoration-none text-light">link 6</a>
        </div>
    </div>

        
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>

</html>