# Use official Tomcat image
FROM tomcat:9.0

# Clean default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy static files
COPY index.html /usr/local/tomcat/webapps/ROOT/
COPY styles.css /usr/local/tomcat/webapps/ROOT/
COPY script.js /usr/local/tomcat/webapps/ROOT/

# Copy Java servlet files if you have them precompiled (class files + web.xml)
COPY backend/ /usr/local/tomcat/webapps/ROOT/WEB-INF/

# Expose port
EXPOSE 8080

# Start Tomcat (default CMD works)
