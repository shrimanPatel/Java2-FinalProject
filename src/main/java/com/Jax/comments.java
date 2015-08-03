/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Jax;

import databaseCredentials.credentials;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.Stateful;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.PathParam;
import javax.ws.rs.Consumes;
import javax.ws.rs.Produces;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;
import javax.ws.rs.core.MediaType;

/**
 * REST Web Service
 *
 * @author Shriman
 */
@Stateful
@Path("movieComments")
public class comments {

    String username;
    Connection conn = null;
    Statement stmt;
    ResultSet rs;

    @Context
    private UriInfo context;
    private Object databaseCredentials;

    /**
     * Creates a new instance of comments
     */
    public comments() {
    }

    @GET
    @Path("/comments/{movieId}")
    @Produces(MediaType.APPLICATION_JSON)
    public String getComments(@PathParam("movieId") String imdbID, @Context HttpServletRequest request) {

        HttpSession session = request.getSession();
        username = (String) session.getAttribute("username");

        return imdbID;
    }

    @POST
    @Path("/insertComments/{movieId}")
    @Consumes(MediaType.APPLICATION_JSON)
    public String insertComments(@PathParam("movieId") String imdbID, @Context HttpServletRequest request, String comment) {

        HttpSession session = request.getSession();
        username = (String) session.getAttribute("username");

        conn = credentials.getConnection();
        return imdbID;
    }

    /**
     * Retrieves representation of an instance of com.Jax.comments
     *
     * @return an instance of java.lang.String
     */
    @GET
    @Produces("application/json")
    public String getJson() {
        //TODO return proper representation object
        throw new UnsupportedOperationException();
    }

    /**
     * PUT method for updating or creating an instance of comments
     *
     * @param content representation for the resource
     * @return an HTTP response with content of the updated or created resource.
     */
    @PUT
    @Consumes("application/json")
    public void putJson(String content) {
    }
}
