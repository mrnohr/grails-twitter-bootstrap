<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap"/>
		<title>Grails Twitter Bootstrap Scaffolding</title>
	</head>

	<body>
		<div class="row-fluid">
			<aside id="application-status" class="span3">
				<div class="well sidebar-nav">
					<h5>Application Status</h5>
					<ul>
						<li>App version: <g:meta name="app.version"/></li>
						<li>Grails version: <g:meta name="app.grails.version"/></li>
						<li>Groovy version: ${org.codehaus.groovy.runtime.InvokerHelper.getVersion()}</li>
						<li>JVM version: ${System.getProperty('java.version')}</li>
						<li>Controllers: ${grailsApplication.controllerClasses.size()}</li>
						<li>Domains: ${grailsApplication.domainClasses.size()}</li>
						<li>Services: ${grailsApplication.serviceClasses.size()}</li>
						<li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>
					</ul>
					<h5>Installed Plugins</h5>
					<ul>
						<g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
							<li>${plugin.name} - ${plugin.version}</li>
						</g:each>
					</ul>
				</div>
			</aside>

			<section id="main" class="span9">

				<div class="hero-unit">
					<h1>Welcome to Grails</h1>

					<p>Congratulations, you have successfully started your first Grails application! At the 
					moment this is the default page, feel free to modify it to either redirect to a controller 
					or display whatever content you may choose. </p>
					
					<p>This has been updated to use the twitter-bootstrap look and feel</p>
				</div>
					
				<div class="row-fluid">
					
					<div class="span8">
						<h2>Available Controllers</h2>
						<p>Below is a list of controllers that are currently deployed in this application, 
						click on each to execute its default action:</p>
						<ul class="nav nav-list">
							<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
								<li><g:link controller="${c.logicalPropertyName}">${c.naturalName}</g:link></li>
							</g:each>
						</ul>
					</div>
					
					<div class="span4">
						<h2>References</h2>
						<ul>
						
						
							<li><a href="http://twitter.github.com/bootstrap/">Twitter Bootstrap</a></li>
							<li><a href="http://grails-twitter-bootstrap.cloudfoundry.com/">Bootstrap Grails App Information</a></li>
							<li><a href="https://github.com/robfletcher/twitter-bootstrap-scaffolding">Bootstrap GitHub</a></li>
							<li><a href="https://github.com/groovydev/twitter-bootstrap-grails-plugin">Bootstrap Resources Plugin</a></li>
							<li><a href="http://freeside.co/grails-fields/">Fields Plugin</a></li>
							
							
						</ul>
					</div>

				</div>

			</section>
		</div>
	</body>
</html>
