/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classe;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Aluno
 */
public class livro {
    private String titulo;
    private String autor;
    private Date data_entrada;
    private Date data_lancamento;
    private String genero;

    public String getTitulo() {
        return titulo;
    }
    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }
    public String getAutor() {
        return autor;
    }
    public void setAutor(String autor) {
        this.autor = autor;
    }
    public Date getData_entrada() {
        return data_entrada;
    }
    public void setData_entrada(Date data_entrada) {
        this.data_entrada = data_entrada;
    }
    public Date getData_lancamento() {
        return data_lancamento;
    }
    public void setData_lancamento(Date data_lancamento) {
        this.data_lancamento = data_lancamento;
    }
    public String getGenero() {
        return genero;
    }
    public void setGenero(String genero) {
        this.genero = genero;
    }
    public livro() {
    }
    public livro(String titulo, String autor, Date data_entrada, Date data_lancamento, String genero) {
        this.titulo = titulo;
        this.autor = autor;
        this.data_entrada = data_entrada;
        this.data_lancamento = data_lancamento;
        this.genero = genero;
    }
    
    public void save(livro l) throws Exception{
        try {
            Connection conexao = new Conexao().Conectar();
            PreparedStatement ps;
            String sql = "INSERT INTO livro(titulo, "
                    + "autor, "
                    + "data_entrada, "
                    + "data_lancamento, "
                    + "genero)"
                    + "VALUES(?,?,?,?,?)";
            ps = conexao.prepareStatement(sql);
            ps.setString(1, l.getTitulo());
            ps.setString(2, l.getAutor());
            ps.setDate(3, l.getData_entrada());
            ps.setDate(4, l.getData_lancamento());
            ps.setString(5, l.getGenero());
            ps.executeUpdate();
        } catch(SQLException u){
            throw new RuntimeException(u);
        }
    }
}
