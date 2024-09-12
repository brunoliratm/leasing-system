<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="main.java.com.locadora.models.Veiculo" %>

<!DOCTYPE html>
<html>
<head>
    <title>Cadastrar Cliente e Reservar Veículo</title>
</head>
<body>
    <h1>Cadastrar Cliente e Reservar Veículo</h1>
    
    <form action="${pageContext.request.contextPath}/cadastrarCliente" method="post">
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" required><br><br>
        
        <label for="endereco">Endereço:</label>
        <input type="text" id="endereco" name="endereco" required><br><br>
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>
        
        <label for="telefone">Telefone:</label>
        <input type="text" id="telefone" name="telefone" required><br><br>
        
        <label for="placa">Placa do Veículo:</label>
        <input type="text" id="placa" name="placa" required><br><br>
        
        <label for="dataDevolucao">Data de Devolução:</label>
        <input type="date" id="dataDevolucao" name="dataDevolucao" required><br><br>
        
        <input type="submit" value="Reservar Veículo">
    </form>
    
    <br>
    
    <h2>Veículos Disponíveis</h2>
    <table border="1">
        <tr>
            <th>Marca</th>
            <th>Modelo</th>
            <th>Ano</th>
            <th>Cor</th>
            <th>Placa</th>
        </tr>
        <% 
            List<Veiculo> veiculos = (List<Veiculo>) request.getAttribute("veiculos");
            
            if (veiculos == null || veiculos.isEmpty()) {
        %>
        <tr>
            <td colspan="5">Nenhum veículo disponível.</td>
        </tr>
        <% 
            } else {
                for (Veiculo veiculo : veiculos) {
        %>
        <tr>
            <td><%= veiculo.getMarca() %></td>
            <td><%= veiculo.getModelo() %></td>
            <td><%= veiculo.getAno() %></td>
            <td><%= veiculo.getCor() %></td>
            <td><%= veiculo.getPlaca() %></td>
        </tr>
        <% 
                }
            }
        %>
    </table>
    
    <br>
    <a href="${pageContext.request.contextPath}/index.jsp">Voltar para a Página Inicial</a>
</body>
</html>

