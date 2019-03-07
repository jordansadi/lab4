<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="us.matt.model.Item" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Milli's Store</title>
    <link rel="stylesheet" href="./css/theStyle.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Milli's Store, Milwaukee's Only Milli-Owned Store.">
</head>
<body>
<div id="wrapper">
    <header>
        <h1>Milli's Store</h1>
    </header>

    <nav>
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="cat.go">Catalog</a></li>
            <li><a href="cart.go">Shopping Cart</a></li>
        </ul>
    </nav>
    <main>
        <h2>Catalog</h2>
        <form action="cartplace.go">
            <table>
                <%
                    List recs = (List) request.getAttribute("catalog");
                    Iterator it = recs.iterator();
                    while (it.hasNext()) {
                        // Notice we're outputting some HTML. Is that a good idea?
                        // Also, notice we do not cast the object returned by the
                        // iterator to a String. Why?
                        Item item = (Item) it.next();
                        out.print("<tr><td>" + item.getName() + "</td><td>$" + item.getPrice() +
                                "</td><td>" + item.getDescription() + "</td><td>Add to Cart<input type='checkbox' name='cartItem' value=" +
                                item.getProductNumber()+ "></td></tr>");
                    }
                %>

            </table>
            <input type="submit" value="Purchase">
        </form>
    </main>
    <footer>
        <a id="mobile" href="tel:262-521-5040">262-521-5040</a>
        <span id="desktop">262-521-5040</span>&nbsp; | &nbsp;
        <a href="mailto:jsadi@my.wctc.edu">jsadi@my.wctc.edu</a><br>
        Copyright &copy; 2019 Milli's Store
    </footer>
</div>
</body>
</html>
