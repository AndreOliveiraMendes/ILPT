/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classe;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Aluno
 */
 
public class Conexao {
    private Connection conexao;
    private final String bd;
    private final String user;
    private final String pswd;

    public Conexao() {
        this.pswd = "";
        this.user = "root";
        this.bd = "aula";
        this.conexao = null;
    }
    public Connection Conectar() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexao =  DriverManager.getConnection("jdbc:mysql://localhost/" + this.bd
                    , this.user, this.pswd);
            //System.out.println("Conectado.");
        } catch (ClassNotFoundException ex){
                System.out.println("Classe não encontrada, adicione o driver nas bibliotecas.");
                Logger.getLogger(Conexao.class.getName()).log(Level.SEVERE, null, ex);
        } catch(SQLException e){
            System.out.println(e);
            throw new RuntimeException(e);
        }
        return conexao;
    }
    
}