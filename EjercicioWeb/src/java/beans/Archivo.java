/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Juan Miguel Arias Mejias
 */
public class Archivo {

    File file;
    ObjectOutputStream w;
    ObjectInputStream r;

    private ArrayList<Persona> lista = new ArrayList<>();

    public Archivo() {
        try {

            file = new File(getClass().getResource("file.txt").toURI());
            init();

        } catch (URISyntaxException ex) {
            System.err.println(ex.getMessage());
        }
    }

    public void registrar(Persona persona) {
        lista.add(persona);
        try {
            guardar();
        } catch (IOException ex) {
            Logger.getLogger(Archivo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void guardar() throws IOException {
        close();
        open();
        w.reset();
        for (int i = 0; i < lista.size(); i++) {

            w.writeObject(lista.get(i));
        }
        close();
    }

    public String obtenerRegistros() {
        StringBuilder sb = new StringBuilder();

        for (int i = 0; i < lista.size(); i++) {
            sb.append(lista.get(i)).append("\n");
        }

        return sb.toString();
    }

    private void init() {

        open();

        try {

            while (true) {

                Persona p = (Persona) r.readObject();

                if (p != null) {
                    lista.add(p);
                } else {
                    close();
                    return;
                }
            }

        } catch (IOException | ClassNotFoundException e) {
            System.out.println(e.getMessage());
        }

    }

    public void open() {
        try {

            w = new ObjectOutputStream(new FileOutputStream(file));
            r = new ObjectInputStream(new FileInputStream(file));

        } catch (IOException e) {
            System.err.println(e.getMessage());
        }
    }

    public void close() {
        try {
            w.close();
            r.close();
        } catch (IOException e) {
            System.out.println(e.getMessage());
        }
    }

    public static void main(String[] args) {
        Archivo archivo = new Archivo();
        //archivo.registrar(new Persona("Juan", 15));
        System.out.println(archivo.obtenerRegistros());

    }

}
