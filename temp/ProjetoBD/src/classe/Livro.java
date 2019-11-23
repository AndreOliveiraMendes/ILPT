/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classe;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Aluno
 */
public class Livro {
    private int id;
    private String titulo;
    private String autor;
    private Date data_entrada;
    private Date data_lancamento;
    private String genero;

    public int getID(){
        return id;
    }
    public void setID(int id){
        this.id = id;
    }
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
    public Livro() {
    }
    public Livro(String titulo, String autor, Date data_entrada, Date data_lancamento, String genero) {
        this.titulo = titulo;
        this.autor = autor;
        this.data_entrada = data_entrada;
        this.data_lancamento = data_lancamento;
        this.genero = genero;
    }
    
    public void save() throws Exception{
        try(Connection conexao = new Conexao().Conectar()){
            PreparedStatement ps;
            String sql = "INSERT INTO livro(titulo, "
                    + "autor, "
                    + "data_entrada, "
                    + "data_lancamento, "
                    + "genero)"
                    + "VALUES(?,?,?,?,?)";
            ps = conexao.prepareStatement(sql);
            ps.setString(1, this.getTitulo());
            ps.setString(2, this.getAutor());
            ps.setDate(3, this.getData_entrada());
            ps.setDate(4, this.getData_lancamento());
            ps.setString(5, this.getGenero());
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null, "inclusao finalizada");
            conexao.close();
        } catch(SQLException u){
            throw new RuntimeException(u);
        }
    }
    public boolean list(javax.swing.JTable tblTable) throws Exception{
        boolean res = false;
        try(Connection conexao = new Conexao().Conectar()){
            PreparedStatement ps;
            String sql = "SELECT * FROM livro";
            ps = conexao.prepareStatement(sql);
            ResultSet rq = ps.executeQuery();
            DefaultTableModel dmodel = (DefaultTableModel)tblTable.getModel();
            dmodel.setRowCount(0);
            while(rq.next()){
                Object[] info = new Object[6];
                info[0] = rq.getInt("id");
                info[1] = rq.getString("titulo");
                info[2] = rq.getString("autor");
                info[3] = rq.getString("genero");
                info[4] = rq.getDate("data_entrada");
                info[5] = rq.getDate("data_lancamento");
                dmodel.addRow(info);
                res = true;
            }
            conexao.close();
        } catch(SQLException u){
            throw new RuntimeException(u);
        }
        return res;
    }
    public void delet() throws Exception{
        try(Connection conexao = new Conexao().Conectar()){
            PreparedStatement ps;
            String sql = "DELETE FROM livro WHERE id = ?";
            ps = conexao.prepareStatement(sql);
            ps.setInt(1, this.getID());
            ps.executeUpdate();
            conexao.close();
        } catch(SQLException u){
            throw new RuntimeException(u);
        }
    }
}
