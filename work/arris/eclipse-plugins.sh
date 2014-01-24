ECLIPSE_HOME=/opt/eclipse ; \
$ECLIPSE_HOME/eclipse -nosplash \
-application org.eclipse.equinox.p2.director \
-repository http://andrei.gmxhome.de/eclipse/,http://dist.springsource.com/release/TOOLS/update/e4.2/,http://download.eclipse.org/eclipse/updates/4.2,\
http://download.eclipse.org/eclipse/updates/4.2/R-4.2-201206081400,http://download.eclipse.org/eclipse/updates/4.2/R-4.2.1-201209141800,\
http://download.eclipse.org/eclipse/updates/4.2/categories,http://download.eclipse.org/mylyn/drops/3.8.2/v20120916-1200/,http://download.eclipse.org/mylyn/releases/3.8,\
http://download.eclipse.org/mylyn/releases/juno,http://download.eclipse.org/releases/juno,http://download.eclipse.org/releases/juno/201206270900,\
http://download.eclipse.org/releases/juno/201209280900,http://download.eclipse.org/technology/epp/packages/juno/,\
http://download.springsource.com/release/TOOLS/third-party/m2e-sts310/,\
http://download.springsource.com/release/TOOLS/update/3.1.0.RELEASE/e4.2/,http://eclipse-cs.sf.net/update,http://eclipse-cs.sourceforge.net/update/,\
http://eclipse.tmatesoft.com/svnkit/1.7.x/,http://findbugs.cs.umd.edu/eclipse,http://js-test-driver.s3.amazonaws.com,\
http://mercurialeclipse.eclipselabs.org.codespot.com/hg.wiki/update_site/stable/,http://moreunit.sourceforge.net/update-site/,\
http://sevntu-checkstyle.github.com/sevntu.checkstyle/update-site/,http://sourceforge.net/projects/eclipse-cs/files/updatesite/5.6.0,http://subclipse.tigris.org/update_1.8.x \
 -destination $ECLIPSE_HOME \
 -installIU AnyEditTools.feature.group \
 -installIU com.collabnet.subversion.merge.feature.feature.group \
 -installIU net.sf.eclipsecs.feature.group \
 -installIU edu.umd.cs.findbugs.plugin.eclipse.feature.group \
 -installIU org.eclipse.wst.jsdt.feature.feature.group \
 -installIU com.google.eclipse.javascript.jstestdriver.feature.feature.group \
 -installIU org.moreunit.feature.group \
 -installIU org.moreunit.mock.feature.group \
 -installIU org.springframework.ide.eclipse.ajdt.feature.feature.group \
 -installIU org.springframework.ide.eclipse.aop.feature.feature.group \
 -installIU org.springframework.ide.eclipse.autowire.feature.feature.group \
 -installIU org.springframework.ide.eclipse.batch.feature.feature.group \
 -installIU org.springframework.ide.eclipse.feature.feature.group \
 -installIU org.springframework.ide.eclipse.integration.feature.feature.group \
 -installIU org.springframework.ide.eclipse.osgi.feature.feature.group \
 -installIU org.springframework.ide.eclipse.roo.feature.feature.group \
 -installIU org.springframework.ide.eclipse.security.feature.feature.group \
 -installIU org.springframework.ide.eclipse.data.feature.feature.group \
 -installIU org.springframework.ide.eclipse.webflow.feature.feature.group \
 -installIU org.springsource.ide.eclipse.dashboard.feature.group \
 -installIU org.springframework.ide.eclipse.uaa.feature.feature.group \
 -installIU org.tigris.subversion.subclipse.feature.group \
 -installIU org.tigris.subversion.clientadapter.feature.feature.group \
 -installIU org.tigris.subversion.clientadapter.javahl.feature.feature.group \
 -installIU org.tigris.subversion.subclipse.graph.feature.feature.group


