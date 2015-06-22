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

/**
 *
 * @author Juan Miguel Arias Mejias
 */
public class Archivo {

    File file = new File("archivo.txt");
    ObjectOutputStream w;
    ObjectInputStream r;

    public Archivo() {
        try {

            w = new ObjectOutputStream(new FileOutputStream(file));
            r = new ObjectInputStream(new FileInputStream(file));

        } catch (IOException e) {
            System.err.println(e.getMessage());
        }
    }

    public void registrar(Persona persona) {

        try {
            w.writeObject(persona);
        } catch (IOException e) {
        }
    }

    public Persona leer() {
        try {
            return (Persona) r.readObject();
        } catch (IOException e) {
            System.out.println(e.getMessage());
        } catch (ClassNotFoundException ex) {
            System.out.println(ex.getMessage());
        }
        return null;
    }

    public String obtenerRegistros() {
        open();
        StringBuilder sb = new StringBuilder();

        while (true) {
            Persona temp = leer();
            if (temp != null) {
                sb.append(temp).append("\n");
            } else {
                break;
            }
        }

        close();
        return sb.toString();
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

}
