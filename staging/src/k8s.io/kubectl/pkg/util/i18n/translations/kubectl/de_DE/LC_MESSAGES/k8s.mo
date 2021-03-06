??    ?      ?  ?   	         ?   !  ?   ?  z   ?    0  >  ?    ?    ?  q    ?  ?  ?   *  =   ?  ;     <   Y  S   ?  <   ?  ?  '  ?  ?  c  ?  ?    ?   ?!  ?  ?"     ?$  <   ?$  =   ?$  g  9%  .   ?'  g   ?'  R   8(  "   ?(  4   ?(    ?(     ?-     .    0.  ?   6/  X   ?/  o   -0    ?0  v   ?1  t   2  ?  ?2  ;   P4  [   ?4  J   ?4  a   35  ?   ?5  ?   S6  8   7  %   R7  W   x7     ?7  u   ?7  4   d8  -   ?8  3   ?8  2   ?8  8   .9     g9     ?9  9   ?9     ?9  @   ?9  *   0:  7   [:  '   ?:  .   ?:  =   ?:  *   (;  0   S;  ,   ?;     ?;  ]   ?;  0   /<  0   `<  "   ?<     ?<  ,   ?<  +   ?<  $   +=     P=  *   e=  A   ?=     ?=     ?=     >  )   (>  6   R>     ?>     ?>      ?>  (   ?>     ?     "?     ;?  $   V?     {?     ??  a   ??  s   @  B   ?@  +   ?@  +   ?@  6   "A  q   YA  /   ?A  1   ?A  '   -B  '   UB     }B  &   ?B  %   ?B  (   ?B      C  _   -C     ?C  "   ?C  "   ?C     ?C  -   D  -   @D  9   nD     ?D     ?D  c   ?D  #   EE  ?   iE  H   ?E  &   5F  e   \F  ?   ?F  E   ?G  a   ?G     PH     mH     ?H  =   ?H  $   ?H     I  &   'I  +   NI  G   zI     ?I  /   ?I  ?  J  ?   ?K  ?   ?L  ?   IM  ?  ?M  >  yO    ?P  9  ?R  ?  U  ?  ?V  ?   ?X  D   QY  B   ?Y  N   ?Y  W   (Z  E   ?Z  ?  ?Z  ?  ?\  k  ^^    ?_    ?b  ?  ?c     ?e  C   ?e  <   Bf  ?  f  4   (i  {   ]i  V   ?i  /   0j  9   `j  ?  ?j  #   Ep  %   ip  ?   ?p  ?   ?q  Z   4r  p   ?r     s  r   t  v   ?t  ?  ?t  A   ?v  p   (w  Z   ?w  {   ?w  ?   px  ?   Qy  M   Pz  *   ?z  m   ?z  "   7{  ?   Z{  :   ?{  3   $|  ?   X|  /   ?|  ?   ?|  $   }      -}  B   N}     ?}  L   ?}  0   ?}  ;   '~  ,   c~  @   ?~  P   ?~  2   "  5   U  5   ?  $   ?  f   ?  1   M?  2   ?  )   ??  &   ܀  .   ?  ,   2?  $   _?     ??  3   ??  L   ˁ  !   ?     :?     V?  +   s?  ?   ??  &   ߂     ?  $   "?  9   G?     ??     ??  !   ??  +   ۃ      ?     (?  \   F?  ?   ??  E   4?  ;   z?  .   ??  9   ??  w   ?  3   ??  7   ˆ  3   ?  5   7?  "   m?  /   ??  +   ??  ,   ??  %   ?  a   ??  %   ??  -   ǈ  -   ??  *   #?  5   N?  5   ??  D   ??     ??     ?  n   7?  8   ??  ?   ߊ  W   `?  $   ??  g   ݋  ?   E?  L   4?  j   ??  #   ??      ?  )   1?  E   [?  0   ??  *   Ҏ  6   ??  7   4?  V   l?     Ï  3   ُ     J   ?                 p   ~   \               u   h         {   @              x   5         o   	       =      i   (   ,   E   ?           N   1       B   
   _          M   0       ?   c   ?   Q      ?   *   `   U       ?          +   ?       H      '   }   -   L   q      K              %   I       ?   9   6   ?      z   8   b              ?   ?   <   k       X          O   .   ?              r      #   >   3      w   v       Z   y       &       V       :   P       [   G          ?                  7   |   2   S                 D       d   Y   e   F   ^              $   n   ?   f   a   A   W       m          4   !   /          ?   l   ?   T   C   j   )   ]           "   t   s                  ?               ;   ?   R      g    
		  # Create a ClusterRoleBinding for user1, user2, and group1 using the cluster-admin ClusterRole
		  kubectl create clusterrolebinding cluster-admin --clusterrole=cluster-admin --user=user1 --user=user2 --group=group1 
		  # Create a RoleBinding for user1, user2, and group1 using the admin ClusterRole
		  kubectl create rolebinding admin --clusterrole=admin --user=user1 --user=user2 --group=group1 
		  # Show metrics for all nodes
		  kubectl top node

		  # Show metrics for a given node
		  kubectl top node NODE_NAME 
		# Auto scale a deployment "foo", with the number of pods between 2 and 10, no target CPU utilization specified so a default autoscaling policy will be used:
		kubectl autoscale deployment foo --min=2 --max=10

		# Auto scale a replication controller "foo", with the number of pods between 1 and 5, target CPU utilization at 80%:
		kubectl autoscale rc foo --max=5 --cpu-percent=80 
		# Create a new resourcequota named my-quota
		kubectl create quota my-quota --hard=cpu=1,memory=1G,pods=2,services=3,replicationcontrollers=2,resourcequotas=1,secrets=5,persistentvolumeclaims=10

		# Create a new resourcequota named best-effort
		kubectl create quota best-effort --hard=pods=100 --scopes=BestEffort 
		# Create a pod disruption budget named my-pdb that will select all pods with the app=rails label
		# and require at least one of them being available at any point in time.
		kubectl create poddisruptionbudget my-pdb --selector=app=rails --min-available=1

		# Create a pod disruption budget named my-pdb that will select all pods with the app=nginx label
		# and require at least half of the pods selected to be available at any point in time.
		kubectl create pdb my-pdb --selector=app=nginx --min-available=50% 
		# Describe a node
		kubectl describe nodes kubernetes-node-emt8.c.myproject.internal

		# Describe a pod
		kubectl describe pods/nginx

		# Describe a pod identified by type and name in "pod.json"
		kubectl describe -f pod.json

		# Describe all pods
		kubectl describe pods

		# Describe pods by label name=myLabel
		kubectl describe po -l name=myLabel

		# Describe all pods managed by the 'frontend' replication controller (rc-created pods
		# get the name of the rc as a prefix in the pod the name).
		kubectl describe pods frontend 
		# Drain node "foo", even if there are pods not managed by a ReplicationController, ReplicaSet, Job, DaemonSet or StatefulSet on it.
		$ kubectl drain foo --force

		# As above, but abort if there are pods not managed by a ReplicationController, ReplicaSet, Job, DaemonSet or StatefulSet, and use a grace period of 15 minutes.
		$ kubectl drain foo --grace-period=900 
		# Edit the service named 'docker-registry':
		kubectl edit svc/docker-registry

		# Use an alternative editor
		KUBE_EDITOR="nano" kubectl edit svc/docker-registry

		# Edit the job 'myjob' in JSON using the v1 API format:
		kubectl edit job.v1.batch/myjob -o json

		# Edit the deployment 'mydeployment' in YAML and save the modified config in its annotation:
		kubectl edit deployment/mydeployment -o yaml --save-config 
		# Get the documentation of the resource and its fields
		kubectl explain pods

		# Get the documentation of a specific field of a resource
		kubectl explain pods.spec.containers 
		# Mark node "foo" as schedulable.
		$ kubectl uncordon foo 
		# Mark node "foo" as unschedulable.
		kubectl cordon foo 
		# Print flags inherited by all commands
		kubectl options 
		# Print the client and server versions for the current context
		kubectl version 
		# Print the supported API versions
		kubectl api-versions 
		# Replace a pod using the data in pod.json.
		kubectl replace -f ./pod.json

		# Replace a pod based on the JSON passed into stdin.
		cat pod.json | kubectl replace -f -

		# Update a single-container pod's image version (tag) to v4
		kubectl get pod mypod -o yaml | sed 's/\(image: myimage\):.*$/:v4/' | kubectl replace -f -

		# Force replace, delete and then re-create the resource
		kubectl replace --force -f ./pod.json 
		# Set the last-applied-configuration of a resource to match the contents of a file.
		kubectl apply set-last-applied -f deploy.yaml

		# Execute set-last-applied against each configuration file in a directory.
		kubectl apply set-last-applied -f path/

		# Set the last-applied-configuration of a resource to match the contents of a file, will create the annotation if it does not already exist.
		kubectl apply set-last-applied -f deploy.yaml --create-annotation=true
		 
		# Show metrics for all pods in the default namespace
		kubectl top pod

		# Show metrics for all pods in the given namespace
		kubectl top pod --namespace=NAMESPACE

		# Show metrics for a given pod and its containers
		kubectl top pod POD_NAME --containers

		# Show metrics for the pods defined by label name=myLabel
		kubectl top pod -l name=myLabel 
		# Update pod 'foo' with the label 'unhealthy' and the value 'true'.
		kubectl label pods foo unhealthy=true

		# Update pod 'foo' with the label 'status' and the value 'unhealthy', overwriting any existing value.
		kubectl label --overwrite pods foo status=unhealthy

		# Update all pods in the namespace
		kubectl label pods --all status=unhealthy

		# Update a pod identified by the type and name in "pod.json"
		kubectl label -f pod.json status=unhealthy

		# Update pod 'foo' only if the resource is unchanged from version 1.
		kubectl label pods foo status=unhealthy --resource-version=1

		# Update pod 'foo' by removing a label named 'bar' if it exists.
		# Does not require the --overwrite flag.
		kubectl label pods foo bar- 
		# View the last-applied-configuration annotations by type/name in YAML.
		kubectl apply view-last-applied deployment/nginx

		# View the last-applied-configuration annotations by file in JSON
		kubectl apply view-last-applied -f deploy.yaml -o json 
		Convert config files between different API versions. Both YAML
		and JSON formats are accepted.

		The command takes filename, directory, or URL as input, and convert it into format
		of version specified by --output-version flag. If target version is not specified or
		not supported, convert to latest version.

		The default output will be printed to stdout in YAML format. One can use -o option
		to change to output destination. 
		Create a ClusterRole. 
		Create a ClusterRoleBinding for a particular ClusterRole. 
		Create a RoleBinding for a particular Role or ClusterRole. 
		Create a configmap based on a file, directory, or specified literal value.

		A single configmap may package one or more key/value pairs.

		When creating a configmap based on a file, the key will default to the basename of the file, and the value will
		default to the file content.  If the basename is an invalid key, you may specify an alternate key.

		When creating a configmap based on a directory, each file whose basename is a valid key in the directory will be
		packaged into the configmap.  Any directory entries except regular files are ignored (e.g. subdirectories,
		symlinks, devices, pipes, etc). 
		Create a namespace with the specified name. 
		Create a pod disruption budget with the specified name, selector, and desired minimum available pods 
		Create a resourcequota with the specified name, hard limits and optional scopes 
		Create a role with single rule. 
		Create a service account with the specified name. 
		Edit a resource from the default editor.

		The edit command allows you to directly edit any API resource you can retrieve via the
		command line tools. It will open the editor defined by your KUBE_EDITOR, or EDITOR
		environment variables, or fall back to 'vi' for Linux or 'notepad' for Windows.
		You can edit multiple objects, although changes are applied one at a time. The command
		accepts filenames as well as command line arguments, although the files you point to must
		be previously saved versions of resources.

		Editing is done with the API version used to fetch the resource.
		To edit using a specific API version, fully-qualify the resource, version, and group.

		The default format is YAML. To edit in JSON, specify "-o json".

		The flag --windows-line-endings can be used to force Windows line endings,
		otherwise the default for your operating system will be used.

		In the event an error occurs while updating, a temporary file will be created on disk
		that contains your unapplied changes. The most common error when updating a resource
		is another editor changing the resource on the server. When this occurs, you will have
		to apply your changes to the newer version of the resource, or update your temporary
		saved copy to include the latest resource version. 
		Mark node as schedulable. 
		Mark node as unschedulable. 
		Set the latest last-applied-configuration annotations by setting it to match the contents of a file.
		This results in the last-applied-configuration being updated as though 'kubectl apply -f <file>' was run,
		without updating any other parts of the object. 
	  # Create a new TLS secret named tls-secret with the given key pair:
	  kubectl create secret tls tls-secret --cert=path/to/tls.cert --key=path/to/tls.key 
	  # Create a new namespace named my-namespace
	  kubectl create namespace my-namespace 
	  # Create a new service account named my-service-account
	  kubectl create serviceaccount my-service-account 
	Create an ExternalName service with the specified name.

	ExternalName service references to an external DNS address instead of
	only pods, which will allow application authors to reference services
	that exist off platform, on other clusters, or locally. 
	Help provides help for any command in the application.
	Simply type kubectl help [path to command] for full details. 
    # Create a new LoadBalancer service named my-lbs
    kubectl create service loadbalancer my-lbs --tcp=5678:8080 
    # Dump current cluster state to stdout
    kubectl cluster-info dump

    # Dump current cluster state to /path/to/cluster-state
    kubectl cluster-info dump --output-directory=/path/to/cluster-state

    # Dump all namespaces to stdout
    kubectl cluster-info dump --all-namespaces

    # Dump a set of namespaces to /path/to/cluster-state
    kubectl cluster-info dump --namespaces default,kube-system --output-directory=/path/to/cluster-state 
    Create a LoadBalancer service with the specified name. A comma-delimited set of quota scopes that must all match each object tracked by the quota. A comma-delimited set of resource=quantity pairs that define a hard limit. A label selector to use for this budget. Only equality-based selector requirements are supported. A label selector to use for this service. Only equality-based selector requirements are supported. If empty (the default) infer the selector from the replication controller or replica set.) Additional external IP address (not managed by Kubernetes) to accept for the service. If this IP is routed to a node, the service can be accessed by this IP in addition to its generated service IP. Apply a configuration to a resource by filename or stdin Approve a certificate signing request Assign your own ClusterIP or set to 'None' for a 'headless' service (no loadbalancing). Attach to a running container ClusterIP to be assigned to the service. Leave empty to auto-allocate, or set to 'None' to create a headless service. ClusterRole this ClusterRoleBinding should reference ClusterRole this RoleBinding should reference Convert config files between different API versions Copy files and directories to and from containers. Create a ClusterRoleBinding for a particular ClusterRole Create a LoadBalancer service. Create a NodePort service. Create a RoleBinding for a particular Role or ClusterRole Create a TLS secret Create a configmap from a local file, directory or literal value Create a namespace with the specified name Create a pod disruption budget with the specified name. Create a quota with the specified name. Create a secret for use with a Docker registry Create a secret from a local file, directory or literal value Create a secret using specified subcommand Create a service account with the specified name Create a service using specified subcommand. Create an ExternalName service. Delete resources by filenames, stdin, resources and names, or by resources and label selector Delete the specified cluster from the kubeconfig Delete the specified context from the kubeconfig Deny a certificate signing request Describe one or many contexts Display Resource (CPU/Memory) usage of nodes Display Resource (CPU/Memory) usage of pods Display Resource (CPU/Memory) usage. Display cluster info Display clusters defined in the kubeconfig Display merged kubeconfig settings or a specified kubeconfig file Display one or many resources Displays the current-context Documentation of resources Drain node in preparation for maintenance Dump lots of relevant info for debugging and diagnosis Edit a resource on the server Email for Docker registry Execute a command in a container Forward one or more local ports to a pod Help about any command Mark node as schedulable Mark node as unschedulable Mark the provided resource as paused Modify certificate resources. Modify kubeconfig files Name or number for the port on the container that the service should direct traffic to. Optional. Only return logs after a specific date (RFC3339). Defaults to all logs. Only one of since-time / since may be used. Output shell completion code for the specified shell (bash or zsh) Password for Docker registry authentication Path to PEM encoded public key certificate. Path to private key associated with given certificate. Precondition for resource version. Requires that the current resource version match this value in order to scale. Print the client and server version information Print the list of flags inherited by all commands Print the logs for a container in a pod Replace a resource by filename or stdin Resume a paused resource Role this RoleBinding should reference Run a particular image on the cluster Run a proxy to the Kubernetes API server Set specific features on objects Set the last-applied-configuration annotation on a live object to match the contents of a file. Set the selector on a resource Sets a cluster entry in kubeconfig Sets a context entry in kubeconfig Sets a user entry in kubeconfig Sets an individual value in a kubeconfig file Sets the current-context in a kubeconfig file Show details of a specific resource or group of resources Show the status of the rollout Synonym for --target-port Take a replication controller, service, deployment or pod and expose it as a new Kubernetes Service The image for the container to run. The image pull policy for the container. If left empty, this value will not be specified by the client and defaulted by the server The minimum number or percentage of available pods this budget requires. The name for the newly created object. The name for the newly created object. If not specified, the name of the input resource will be used. The name of the API generator to use. There are 2 generators: 'service/v1' and 'service/v2'. The only difference between them is that service port in v1 is named 'default', while it is left unnamed in v2. Default is 'service/v2'. The network protocol for the service to be created. Default is 'TCP'. The port that the service should serve on. Copied from the resource being exposed, if unspecified The type of secret to create Undo a previous rollout Update image of a pod template Update resource requests/limits on objects with pod templates Update the annotations on a resource Update the labels on a resource Update the taints on one or more nodes Username for Docker registry authentication View latest last-applied-configuration annotations of a resource/object View rollout history kubectl controls the Kubernetes cluster manager Project-Id-Version: kubernetes
Report-Msgid-Bugs-To: EMAIL
PO-Revision-Date: 2017-09-02 01:36+0200
Last-Translator: Steffen Schmitz <steffenschmitz@hotmail.de>
Language-Team: Steffen Schmitz <steffenschmitz@hotmail.de>
Language: de_DE
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Poedit 1.8.7.1
X-Poedit-SourceCharset: UTF-8
 
		 # Erstellt ein ClusterRoleBinding für user1, user2 und group1 mit der ClusterRole cluster-admin
		  kubectl create clusterrolebinding cluster-admin --clusterrole=cluster-admin --user=user1 --user=user2 --group=group1 
		  # Erstellt ein RoleBinding für user1, user2 und group1 mit der ClusterRole admin
		  kubectl create rolebinding admin --clusterrole=admin --user=user1 --user=user2 --group=group1 
		  # Zeige Metriken für alle Nodes
		  kubectl top node

		  # Zeige Metriken für den gegebenen Node
		  kubectl top node NODE_NAME 
		# Auto-skaliere ein Deployment "foo", mit einer Anzahl an Pods zwischen 2 und 10, eine Ziel-CPU-Auslastung ist angegeben, sodass eine Standard-autoskalierungsregel verwendet wird:
		kubectl autoscale deployment foo --min=2 --max=10

		# Auto-skaliere einen Replication-Controller "foo", mit einer Anzahl an Pods zwischen 1 und 5, mit einer Ziel-CPU-Auslastung von 80%:
		kubectl autoscale rc foo --max=5 --cpu-percent=80 
		# Erstellt eine neue ResourceQuota my-quota
		kubectl create quota my-quota --hard=cpu=1,memory=1G,pods=2,services=3,replicationcontrollers=2,resourcequotas=1,secrets=5,persistentvolumeclaims=10

		# Erstellt eine neue ResourceQuota best-effort
		kubectl create quota best-effort --hard=pods=100 --scopes=BestEffort 
		# Erstellt ein Pod-Disruption-Budget my-pdb, dass alle Pods mit dem Label app=rails auswählt
		# und sicherstellt, dass mindestens einer von ihnen zu jedem Zeitpunkt verfügbar ist.
		kubectl create poddisruptionbudget my-pdb --selector=app=rails --min-available=1

		# Erstellt ein Pod-Disruption-Budget my-pdb, dass alle Pods mit dem Label app=nginx auswählt
		# und sicherstellt, dass mindestens die Hälfte der gewählten Pods zu jedem Zeitpunkt verfügbar ist.
		kubectl create pdb my-pdb --selector=app=nginx --min-available=50% 
		# Beschreibt einen Knoten
		kubectl describe nodes kubernetes-node-emt8.c.myproject.internal

		# Beschreibt einen Pod
		kubectl describe pods/nginx

		# Beschreibt einen Pod mit type und name aus "pod.json"
		kubectl describe -f pod.json

		# Beschreibt alle Pods
		kubectl describe pods

		# Beschreibt Pods mit dem Label name=myLabel
		kubectl describe po -l name=myLabel

		# Beschreibt alle Pods, die vom ReplicationController 'frontend' verwaltet werden (rc-erstellte Pods
		# bekommen den Namen des rc als Prefix im Podnamen).
		kubectl describe pods frontend 
		# Leere den Knoten "foo", selbst wenn er Pods enthält, die nicht von einem ReplicationController, ReplicaSet, Job, DaemonSet oder StatefulSet verwaltet werden.
		$ kubectl drain foo --force

		# Wie zuvor, aber es wird abgebrochen, wenn er Pods enthält, die nicht von einem ReplicationController, ReplicaSet, Job, DaemonSet oder StatefulSet verwaltet werden und mit einer Schonfrist von 15 Minuten.
		$ kubectl drain foo --grace-period=900 
		# Bearbeite den Service 'docker-registry':
		kubectl edit svc/docker-registry

		# Benutze einen anderen Editor
		KUBE_EDITOR="nano" kubectl edit svc/docker-registry

		# Bearbeite den Job 'myjob' in JSON mit dem v1 API Format:
		kubectl edit job.v1.batch/myjob -o json

		# Bearbeite das Deployment 'mydeployment' in YAML und speichere die veränderte Konfiguration in ihrer Annotation:
		kubectl edit deployment/mydeployment -o yaml --save-config 
		# Erhalte die Dokumentation einer Resource und ihrer Felder
		kubectl explain pods

		# Erhalte die Dokumentation eines speziellen Felds einer Resource
		kubectl explain pods.spec.containers 
		# Markiere Knoten "foo" als schedulable.
		$ kubectl uncordon foo 
		# Markiere Knoten "foo" als unschedulable.
		kubectl cordon foo 
		# Gebe Optionen aus, die an alle Kommandos vererbt werden
		kubectl options 
		# Gebe die Client- und Server-Versionen des aktuellen Kontexts aus
		kubectl version 
		# Gebe die unterstützten API Versionen aus
		kubectl api-versions 
		# Ersetze einen Pod mit den Daten aus pod.json.
		kubectl replace -f ./pod.json

		# Ersetze einen Pod mit den JSON-Daten von stdin.
		cat pod.json | kubectl replace -f -

		# Setze die Pod-Image-Version (tag) eines einzelnen Containers zu v4
		kubectl get pod mypod -o yaml | sed 's/\(image: myimage\):.*$/:v4/' | kubectl replace -f -

		# Erzwinge das Ersetzen, Löschen und Neu-Erstellen der Resource
		kubectl replace --force -f ./pod.json 
		# Setze die Last-Applied-Configuration einer Resource auf den Inhalt einer Datei.
		kubectl apply set-last-applied -f deploy.yaml

		# Führe Set-Last-Applied auf jeder Konfigurationsdatei in einem Ordner aus.
		kubectl apply set-last-applied -f path/

		# Setze die Last-Applied-Configuration einer Resource auf den Inhalt einer Datei; erstellt die Annotation, wenn sie noch nicht existiert.
		kubectl apply set-last-applied -f deploy.yaml --create-annotation=true
		 
		# Zeige Metriken für alle Pods im Namespace default
		kubectl top pod

		# Zeige Metriken für alle Pods im gegebenen namespace
		kubectl top pod --namespace=NAMESPACE

		# Zeige Metriken für den gebenen Pod und seine Container
		kubectl top pod POD_NAME --containers

		# Zeige Metriken für Pods mit dem Label name=myLabel
		kubectl top pod -l name=myLabel 
		# Aktualisiere den Pod 'foo' mit dem Label 'unhealthy' und dem Value 'true'.
		kubectl label pods foo unhealthy=true

		# Aktualisiere den Pod 'foo' mit dem Label 'status' und dem Value 'unhealthy' und überschreibe alle bisherigen Values.
		kubectl label --overwrite pods foo status=unhealthy

		# Aktualisiere alle Pods im Namespace
		kubectl label pods --all status=unhealthy

		# Aktualisiere den Pod mit type und name aus "pod.json"
		kubectl label -f pod.json status=unhealthy

		# Aktualisiere den Pod 'foo', wenn die Resource sich nicht von version 1 unterscheidet.
		kubectl label pods foo status=unhealthy --resource-version=1

		# Aktualisiere den Pod 'foo', indem das Label 'bar' gelöscht wird, wenn es existiert.
		# Benötigt kein --overwrite flag.
		kubectl label pods foo bar- 
		# Zeige die Annotation Last-Applied-Configuration mit type/name in YAML an.
		kubectl apply view-last-applied deployment/nginx

		# Zeige die Annotation Last-applied-configuration mit der Datei in JSON an
		kubectl apply view-last-applied -f deploy.yaml -o json 
		Konvertiere Konfigurationsdateien zwischen API Versionen. Sowohl YAML-
		alsauch JSON-Formate werden akzeptiert.

		Der Befehlt akzeptiert Dateinamen, Ordner  oder URL als Parameter und konvertiert es ins Format
		der mit --output-version gegebenen Version. Wenn die Zielversion nicht 
		angegeben wird oder ungültig ist, wird die neueste Version verwendet.

		Die Standardausgabe wird auf stdout im YAML-Format ausgegeben. Man kann die Option -o verwenden,
		um das Ausgabeziel festzulegen. 
		Erstelle eine ClusterRole. 
		Erstelle ein ClusterRoleBinding für eine bestimmte ClusterRole. 
		Erstelle ein RoleBinding für eine bestimmte ClusterRole. 
		Erstelle eine ConfigMap basierend auf einer Datei, einem Order oder einem gegebenen Wert.

		Eine einzelne ConfigMap kann eins oder mehr Key/Value-Paare beinhalten.

		Wenn man eine ConfigMap von einer Datei erstellt, wird der Key standardmäßig der Name der Datei, und der Wert wird
		standardmäßig der Dateiinhalt. Wenn der Dateiname ein ungültiger Key ist, kann ein anderer Key angegeben werden.

		Wenn man eine ConfigMap von einem Ordner erstellt, wird jede Datei, deren Name ein gültiger Key ist
		in die ConfigMap aufgenommen. Jegliche Einträge im Ordner, die keine regulären Dateien sind, werden ignoriert (z.B. SubDirectories, 
		SymLinks, Devices, Pipes, usw). 
		Erstelle einen Namespace mit dem gegebenen Namen. 
		Erstelle ein Pod-Disruption-Budget mit dem gegebenen name, selector und der gewünschten Mindestanzahl verfügbarer Pods 
		Erstelle eine ResourceQuota mit dem gegebenen name, hard limits und optional scopes 
		Erstelle eine Role mit einer einzelnen Rule. 
		Erstelle einen ServiceAccount mit dem gegebenen Namen. 
		Bearbeite eine Resource mit dem Standardeditor.

		Der edit-Befehl erlaubt es jede API Resource direkt zu bearbeiten, wenn sie mit den
		Command-Line-Tools erreichbar ist. Er öffnet den Editor, der in der KUBE_EDITOR oder EDITOR
		Umgebunsvariable festgelegt ist, oder 'vi' auf Linux und 'notepad' auf Windows.
		Es ist möglich mehrere Objekte zu bearbeiten, aber die Änderungen werden nacheinander angewendet. Der Befehl
		akzeptiert Dateinamen und Command-Line-Parameter, aber die verwendeten Dateien müssen
		vorab gespeicherte Versionen von Resourcen sein.

		Die Bearbeitung verwendet die API Version, die genutzt wurde, um die Resource zu lesen.
		Um eine spezifische API Version zu verwenden, muss die vollständige Resource, Version und Group angegeben werden.

		Das Standardformat ist YAML. Um mit JSON zu arbeiten, setze "-o json".

		Die Option --windows-line-endings kann benutzt werden, um Windows Zeilen-umbrüche zu verwenden,
		ansonsten wird der Standard des Betriebssystems verwendet.

		Falls beim Update ein Fehler auftritt, wird eine temporäre Datei auf der Festplatte angelegt,
		die die nicht verarbeiteten Änderungen enthält. Der häufigste Fehler beim Bearbeiten einer Resource
		ist ein anderer Editor, der die Resource auf dem Server ändert. Wenn das auftritt, muss man
		seine Änderungen auf die neue Version anwenden oder seine temporäre
		gespeicherte Kopie mit der neuesten Resourcenversion aktualisieren. 
		Markiere Knoten als schedulable. 
		Markiere Knoten als unschedulable. 
		Setze die aktuelle Annotation Last-Applied-Configuration auf den Inhalt der Datei.
		Das bedeutet, dass Last-Applied-Configuration aktualisiert wird, als ob 'kubectl apply -f <file>' ausgeführt wurde,
		ohne andere Teile des Objekts zu aktualisieren. 
	  # Erstelle ein neues TLS Secret tl-secret mit dem gegebenen Schlüsselpaar:
	  kubectl create secret tls tls-secret --cert=path/to/tls.cert --key=path/to/tls.key 
	  # Erstelle einen neuen Namespace my-namespace
	  kubectl create namespace my-namespace 
	  # Erstelle einen neuen ServiceAccount my-service-account
	  kubectl create serviceaccount my-service-account 
	Erstelle einen ExternalName-Service mit den gegebenen Namen.

	ExternalName service referenziert eine externe DNS Adresse statt
	eines pods, was Anwendungsautoren erlaubt, einen Service zu referenzieren,
	der abseits der Platform, auf anderen Clustern oder lokal exisiert. 
	Help hilft bei jedem Befehl in der Anwendung.
	Gib einfach kubectl help [path to command] für alle Details ein. 
    # Erstelle einen neuen LoadBalancer-Service my-lbs
    kubectl create service loadbalancer my-lbs --tcp=5678:8080 
    # Schreibe den aktuellen Cluster-Zustand auf stdout
    kubectl cluster-info dump

    # Schreibe aktuellen Cluster-Zustand in /path/to/cluster-state
    kubectl cluster-info dump --output-directory=/path/to/cluster-state

    # Schreibe alle Namespaces auf stdout
    kubectl cluster-info dump --all-namespaces

    # Schreibe eine Menge an Namespaces in /path/to/cluster-state
    kubectl cluster-info dump --namespaces default,kube-system --output-directory=/path/to/cluster-state 
    Erstelle einen LoadBalancer-Service mit dem gegebenen Namen. Eine komma-separierte Menge von Quota-Scopes, die zu jedem Object passen muss, dass von der Quota betroffen ist. Eine komma-separierte Menge von resource=quantity Paaren, die ein hartes Limit definieren. Ein Label-Selektor, der für das Budget benutzt werden kann. Nur gleichheits-basierte Auswahlkriterien werden unterstützt. Ein Label-Selektor, der für den Service benutzt werden kann. Nur gleichheits-basierte Auswahlkriterien werden unterstützt. Wenn er leer ist (standard), wird der Selektor vom ReplicationController oder ReplicaSet abgeleitet Zusätzliche, externe IP Adressen (die nicht von Kubernetes verwaltet werden), die der Service akzeptieren soll. Wenn diese IP zu einem Knoten gerouted wird, kann der Service über die IP angesprochen werden, zusätzlich zu seiner generierten Service-IP. Wende eine Konfiguration auf eine Resource über den Dateinamen oder stdin an Genehmige eine Certificate-Signing-Request Weise Deine eigene ClusterIP zu oder setze sie auf 'None' für einen 'headless'-Service (kein LoadBalancing). Weise einem laufenden Container zu ClusterIP, die dem Service zugewiesen werden soll. Freilassen, für automatische Zuweisung oder auf 'None' setzen für einen headless-Service. ClusterRole, die das ClusterRoleBinding referenzieren soll ClusterRole, die das RoleBinding referenzieren soll Konvertiere Config-Dateien zwischen verschiedenen API Versionen Kopiere Dateien und Ordner aus/in Container(n). Erstelle ein ClusterRoleBinding für eine bestimmte ClusterRole Erstelle einen LoadBalancer-Service. Erstelle einen NodePort-Service. Erstelle ein RoleBinding für eine bestimmte Role oder ClusterRole Erstelle ein TLS-Secret Erstelle eine ConfigMap von einer Datei, einem Ordner oder einem festen Wert Erstelle einen Namespace mit dem gegebenen Namen Erstelle ein Pod-Disruption-Budget mit dem gegebenen Namen. Erstelle eine Quota mit dem gegebenen Namen. Erstelle ein Secret für die Benutzung mit einer Docker-Registry Erstelle ein Secret von einer lokalen Datei, einem Ordner oder einem festen Wert Erstelle ein Secret mit dem angegebenen Sub-Befehl Erstelle einen ServiceAccount mit dem gegebenen Namen Erstelle einen Servuce mit dem angegebenen Sub-Befehl Erstelle einen ExternalName-Service. Lösche Resourcen von einer Datei, stdin, resources- und names- oder mit resources- und label-Selektor Lösche das angegebene Cluster aus der kubeconfig Lösche den angegebenen Kontext aus der kubeconfig Lehne eine Certificate-Signing-Request ab Beschreibe einen oder mehrere Kontexte Zeige Resourcennutzung (CPU/Memory) von Knoten Zeige Resourcennutzung (CPU/Memory) von Pods Zeige Resourcennutzung (CPU/Memory). Zeige Cluster-Info Zeige Cluster, die in der kubeconfig definiert sind Zeige vereinte kubeconfig-Einstellungen oder die angegebene kubeconfig-Datei Zeige eine oder mehrere Resourcen Zeige den aktuellen Kontext Dokumentation einer Resource Leere Knoten, um eine Wartung vorzubereiten Zeige viele relevante Informationen für Debugging und Diagnose Bearbeite eine Resource auf dem Server E-Mail für Docker-Registry Führe einen Befehl im Container aus Leite einen oder mehrere lokale Ports an einen Pod weiter Hilfe für jeden Befehl Markiere Knoten als schedulable Markiere Knoten als unschedulable Markiere die gegebene Resource als pausiert Verändere Certificate-Resources Verändere kubeconfig Dateien Name oder Nummer des Ports in dem Container, zu dem der Service Daten leiten soll. Optional. Zeige nur Logs nach einem bestimmten Datum (RFC3339) an. Zeigt standardmäßig alle logs. Es kann entweder since-time oder since benutzt werden. Zeige Shell-Completion-Code für die angegebene Shell (bash oder zsh) Passwort für die Authentifizierung bei der Docker-Registry Pfad des Public-Key-Zertifikats im PEM-Format. Pfad zum Private-Key, der zum gegebenen Zertifikat passt. Vorbedingung für Resource-Version. Verlangt, dass die aktuelle Resource-Version diesen Wert erfüllt, um zu skalieren. Schreibt die Client- und Server-Versionsinformation Schreibt die Liste von Optionen, die alle Befehle erben Schreibt die Logs für einen Container in einem Pod Ersetze eine Resource von einem Dateinamen oder stdin Setze eine pausierte Resource fort Role, die dieses RoleBinding referenzieren soll Starte ein bestimmtes Image auf dem Cluster Starte einen Proxy zum Kubernetes-API-Server Setze bestimmte Features auf Objekten Setze die Annotation Last-Applied-Configuration auf einem Live-Objekt auf den Inhalt einer Datei. Setze den Selektor auf einer Resource Setze einen Cluster-Eintrag in der kubeconfig Setze einen Kontext-Eintrag in der kubeconfig Setze einen User-Eintrag in der kubeconfig Setze einen einzelnen Value in einer kubeconfig-Datei Setze den aktuellen Kontext in einer kubeconfig-Datei Zeige Details zu einer bestimmten Resource oder Gruppe von Resourcen Zeige den Status des Rollout Synonym für --target-port Nehme einen Replication Controller, Service, Deployment oder Pod und biete ihn als neuen Kubernetes-Service an Das Image, dass auf dem Container gestartet werden soll. Die Image-Pull-Policy für den Container. Wenn leer, wird der Wert nicht vom Client gesetzt, sondern standardmäßig vom Server. Die minimale Anzahl oder Prozentzahl von verfügbaren Pods, die das Budget voraussetzt. Der Name des neu erstellten Objekts. Der Name des neu erstellten Objekts. Falls nicht angegeben, wird der Name der Input-Resource verwendet. Der Name des zu verwendenden API-Generators. Es gibt zwei Generatoren: 'service/v1' und 'service/v2'. Der einzige Unterschied ist, dass der Serviceport in v1 'default' heißt, während er in v2 unbenannt bleibt. Standard ist 'service/v2'. Das Netzwerkprotokoll, für den zu erstellenden Service. Standard ist 'TCP'. Der Port auf den der Service hören soll. Wird von der angebotenen Resource kopiert, falls nicht angegeben Der Typ des zu erstellenden Secrets Widerrufe ein vorheriges Rollout Aktualisiere das Image einer Pod-Template Aktualisiere Resourcen requests/limits auf Objekten mit Pod-Templates Aktualisiere die Annotationen auf einer Resource Aktualisiere die Labels auf einer Resource Aktualisiere die Taints auf einem oder mehreren Knoten Username für Authentifizierung bei der Docker-Registry Zeige die aktuelle Annotation Last-Applied-Configuration einer Resource / eines Object Zeige rollout-Verlauf kubectl kontrolliert den Kubernetes-Cluster-Manager 