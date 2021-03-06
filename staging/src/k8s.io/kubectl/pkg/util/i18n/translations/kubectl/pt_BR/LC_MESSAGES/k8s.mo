??    ?      ?  ?   ?	      (  ?   )  ?     z   ?    8  >  ?    ?    ?  q    ?  ?  ?   2  =   ?  ;   %  <   a  S   ?  <   ?  ?  /  ?  ?  c  ?  ?     ?   ?"  ?  ?#     ?%  <   ?%  =   &  g  A&  .   ?(  g   ?(  R   @)  "   ?)  4   ?)    ?)     ?.     /    8/  ?   >0  ?   ?0  X   ?1  o   ?1    f2  v   h3  t   ?3  ?  T4  ?  6  ;   :  [   M:  J   ?:  a   ?:  ?   V;  ?   <  ?   ?<  8   ?=  %   ?=  W   ?=     @>  u   ^>  4   ?>  -   	?  3   7?  2   k?  8   ??     ??     ??  9   @     K@  @   _@  *   ?@  7   ?@  '   A  .   +A  =   ZA  *   ?A  0   ?A  ,   ?A     !B  ]   AB  0   ?B  0   ?B  "   C     $C  ,   BC  +   oC  $   ?C     ?C  *   ?C  A    D     BD     `D     }D  )   ?D  6   ?D     ?D     E      1E  (   RE     {E  `   ?E  ?   ?E  ?   ?F     'G     @G  $   [G     ?G     ?G  a   ?G  s   H  B   ?H  +   ?H  +   ?H  6   'I  q   ^I  /   ?I  1    J  '   2J  '   ZJ     ?J  &   ?J  %   ?J  (   ?J  #   K      5K  _   VK     ?K  "   ?K  "   ?K     L  -   ;L  -   iL  9   ?L     ?L     ?L  c   
M  #   nM  ?   ?M  H   N  &   ^N  e   ?N  ?   ?N  E   ?O  a   P  ?   yP  ?   EQ     R     2R  /   JR     zR  =   ?R  $   ?R     ?R  &   S  +   CS  G   oS     ?S  r   ?S     ?T  /   ST  a  ?T  ?   ?U  ?   ?V  ?   ?W  ?  X  Q  ?Y  *  [  .  A]  ?  p_  ?  ?`  ?   ?b  W   ac  M   ?c  H   d  W   Pd  @   ?d  ?  ?d  ?  ?f  ?  ?h  ?  ?j    :m  ?  <n     &p  >   >p  A   }p  ?  ?p  .   ys  k   ?s  S   t  &   ht  7   ?t    ?t  ;   ?y  ;   z  ?   Qz  ?   O{  ?   |  Z   ?|  q   }  %  ?}  ?   ?~  ?   7    ?    ǁ  C   ??  ?   *?  j   ??  b   #?  ?   ??  ?   O?  ?   ?  M   ͉  5   ?  k   Q?  '   ??  ?   ??  8   o?  1   ??  D   ڋ  2   ?  9   R?  &   ??  "   ??  ;   ֌     ?  I   .?  )   x?  7   ??  (   ڍ  7   ?  E   ;?  5   ??  3   ??  7   ??  &   #?  c   J?  *   ??  +   ُ  -   ?     3?  :   O?  9   ??  1   Đ  "   ??  *   ?  U   D?     ??     ??     Б  /   ??  P   ?     m?     ??  "   ??  0   ʒ     ??  e   ?  ?   ~?  ?   ,?     ֔  !   ??  &   ?  !   <?     ^?  b   y?  ?   ܕ  G   f?  1   ??  -   ??  B   ?  w   Q?  9   ɗ  9   ?  (   =?  4   f?     ??  '   ??  )   ݘ  5   ?  3   =?  .   q?  p   ??     ?  '   1?  (   Y?  (   ??  0   ??  .   ܚ  G   ?  -   S?     ??  f   ??  #   ?  ?   *?  N   ??  #   ?  c   1?  ?   ??  A   ??  `   ˞  ?   ,?  ?   	?     ??     ?  1   ,?  (   ^?  I   ??  &   ѡ  !   ??  &   ?  9   A?  O   {?  "   ˢ  ?   ??     {?  7   ??         <           8   ?       "   Y   0   ?       b       a   `          *       ?   v   [          R      u          ?      W                      D          ?       ?   }      U          L   ?       y   I       ?          ,   w   h       ?   l              !   G   /   '   |   f   ?                 %   i   $   s       >   p   B      ?                  ?       e   
           ?   6          )   7   (   ?   d   q   {         ?          z   F   @   x   &   ?               A   C   _   Z   X       M       	                 ?   ?   ?   ?   S   .       +   9   T       J      :       K   ]       2      ?   o   k              Q   4   V   1   P   j   -       g   N   #   =   c       ?   m       ;      ?       5   ?       O   n   ~   H   \   3   ?   r   E   ?      ^          ?           ?         ?   ?   t        
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
		View the latest last-applied-configuration annotations by type/name or file.

		The default output will be printed to stdout in YAML format. One can use -o option
		to change output format. 
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
    # Update pod 'foo' with the annotation 'description' and the value 'my frontend'.
    # If the same annotation is set multiple times, only the last value will be applied
    kubectl annotate pods foo description='my frontend'

    # Update a pod identified by type and name in "pod.json"
    kubectl annotate -f pod.json description='my frontend'

    # Update pod 'foo' with the annotation 'description' and the value 'my frontend running nginx', overwriting any existing value.
    kubectl annotate --overwrite pods foo description='my frontend running nginx'

    # Update all pods in the namespace
    kubectl annotate pods --all description='my frontend running nginx'

    # Update pod 'foo' only if the resource is unchanged from version 1.
    kubectl annotate pods foo description='my frontend running nginx' --resource-version=1

    # Update pod 'foo' by removing an annotation named 'description' if it exists.
    # Does not require the --overwrite flag.
    kubectl annotate pods foo description- 
    Create a LoadBalancer service with the specified name. A comma-delimited set of quota scopes that must all match each object tracked by the quota. A comma-delimited set of resource=quantity pairs that define a hard limit. A label selector to use for this budget. Only equality-based selector requirements are supported. A label selector to use for this service. Only equality-based selector requirements are supported. If empty (the default) infer the selector from the replication controller or replica set.) Additional external IP address (not managed by Kubernetes) to accept for the service. If this IP is routed to a node, the service can be accessed by this IP in addition to its generated service IP. An inline JSON override for the generated object. If this is non-empty, it is used to override the generated object. Requires that the object supply a valid apiVersion field. Apply a configuration to a resource by filename or stdin Approve a certificate signing request Assign your own ClusterIP or set to 'None' for a 'headless' service (no loadbalancing). Attach to a running container ClusterIP to be assigned to the service. Leave empty to auto-allocate, or set to 'None' to create a headless service. ClusterRole this ClusterRoleBinding should reference ClusterRole this RoleBinding should reference Convert config files between different API versions Copy files and directories to and from containers. Create a ClusterRoleBinding for a particular ClusterRole Create a LoadBalancer service. Create a NodePort service. Create a RoleBinding for a particular Role or ClusterRole Create a TLS secret Create a configmap from a local file, directory or literal value Create a namespace with the specified name Create a pod disruption budget with the specified name. Create a quota with the specified name. Create a secret for use with a Docker registry Create a secret from a local file, directory or literal value Create a secret using specified subcommand Create a service account with the specified name Create a service using specified subcommand. Create an ExternalName service. Delete resources by filenames, stdin, resources and names, or by resources and label selector Delete the specified cluster from the kubeconfig Delete the specified context from the kubeconfig Deny a certificate signing request Describe one or many contexts Display Resource (CPU/Memory) usage of nodes Display Resource (CPU/Memory) usage of pods Display Resource (CPU/Memory) usage. Display cluster info Display clusters defined in the kubeconfig Display merged kubeconfig settings or a specified kubeconfig file Display one or many resources Displays the current-context Documentation of resources Drain node in preparation for maintenance Dump lots of relevant info for debugging and diagnosis Edit a resource on the server Email for Docker registry Execute a command in a container Forward one or more local ports to a pod Help about any command If non-empty, set the session affinity for the service to this; legal values: 'None', 'ClientIP' If non-empty, the annotation update will only succeed if this is the current resource-version for the object. Only valid when specifying a single resource. If non-empty, the labels update will only succeed if this is the current resource-version for the object. Only valid when specifying a single resource. Mark node as schedulable Mark node as unschedulable Mark the provided resource as paused Modify certificate resources. Modify kubeconfig files Name or number for the port on the container that the service should direct traffic to. Optional. Only return logs after a specific date (RFC3339). Defaults to all logs. Only one of since-time / since may be used. Output shell completion code for the specified shell (bash or zsh) Password for Docker registry authentication Path to PEM encoded public key certificate. Path to private key associated with given certificate. Precondition for resource version. Requires that the current resource version match this value in order to scale. Print the client and server version information Print the list of flags inherited by all commands Print the logs for a container in a pod Replace a resource by filename or stdin Resume a paused resource Role this RoleBinding should reference Run a particular image on the cluster Run a proxy to the Kubernetes API server Server location for Docker registry Set specific features on objects Set the last-applied-configuration annotation on a live object to match the contents of a file. Set the selector on a resource Sets a cluster entry in kubeconfig Sets a context entry in kubeconfig Sets a user entry in kubeconfig Sets an individual value in a kubeconfig file Sets the current-context in a kubeconfig file Show details of a specific resource or group of resources Show the status of the rollout Synonym for --target-port Take a replication controller, service, deployment or pod and expose it as a new Kubernetes Service The image for the container to run. The image pull policy for the container. If left empty, this value will not be specified by the client and defaulted by the server The minimum number or percentage of available pods this budget requires. The name for the newly created object. The name for the newly created object. If not specified, the name of the input resource will be used. The name of the API generator to use. There are 2 generators: 'service/v1' and 'service/v2'. The only difference between them is that service port in v1 is named 'default', while it is left unnamed in v2. Default is 'service/v2'. The network protocol for the service to be created. Default is 'TCP'. The port that the service should serve on. Copied from the resource being exposed, if unspecified The resource requirement limits for this container.  For example, 'cpu=200m,memory=512Mi'.  Note that server side components may assign limits depending on the server configuration, such as limit ranges. The resource requirement requests for this container.  For example, 'cpu=100m,memory=256Mi'.  Note that server side components may assign requests depending on the server configuration, such as limit ranges. The type of secret to create Undo a previous rollout Unsets an individual value in a kubeconfig file Update image of a pod template Update resource requests/limits on objects with pod templates Update the annotations on a resource Update the labels on a resource Update the taints on one or more nodes Username for Docker registry authentication View latest last-applied-configuration annotations of a resource/object View rollout history Where to output the files.  If empty or '-' uses stdout, otherwise creates a directory hierarchy in that directory dummy restart flag) kubectl controls the Kubernetes cluster manager Project-Id-Version: 
Report-Msgid-Bugs-To: EMAIL
PO-Revision-Date: 2020-12-11 17:03+0100
Last-Translator: Carlos Panato <ctadeu@gmail.com>
Language-Team: 
Language: pt_BR
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Poedit 2.4.2
Plural-Forms: nplurals=2; plural=(n > 1);
X-Poedit-KeywordsList: 
 
		  # Criar o ClusterRoleBinding para user1, user2, e group1 utilizando o ClusterRole cluster-admin
		  kubectl create clusterrolebinding cluster-admin --clusterrole=cluster-admin —user=user1 —user=user2 —group=group1 
		  # Criar uma RoleBinding para user1, user2, e group1 utilizando o admin ClusterRole
		  kubectl create rolebinding admin --clusterrole=admin —user=user1 —user=user2 —group=group1 
		  # Mostra as métricas para todos os nodes
		  kubectl top node

		  # Mostra as métricas para um node específico
		  kubectl top node NODE_NAME 
		# Escala automaticamente um deployment "foo", com o número de pods entre 2 e 10, sem especificar a utilização da CPU o padrão da política de autoscaling será utilizado:
		kubectl autoscale deployment foo —min=2 —max=10

		# Escala automaticamente um replication controller "foo", com o número de pods entre 1 and 5, e definindo a utilização da CPU em 80%:
		kubectl autoscale rc foo —max=5 —cpu-percent=80 
		# Cria um novo resourcequota com o nome de my-quota
		kubectl create quota my-quota —hard=cpu=1,memory=1G,pods=2,services=3,replicationcontrollers=2,resourcequotas=1,secrets=5,persistentvolumeclaims=10

		# Cria um novo resourcequota com o nome de best-effort
		kubectl create quota best-effort —hard=pods=100 —scopes=BestEffort 
		# Cria um pod disruption budget com o nome de my-pdb que irá selecionar todos os pods com o label app=rails
		# e requer que pelo menos um deles esteja disponível a qualquer momento.
		kubectl create poddisruptionbudget my-pdb —selector=app=rails —min-available=1

		# Cria um pod disruption budget com o nome de my-pdb que irá selecionar todos os pods com o label app=nginx
		# e requer pelo menos que metade dos pods selecionados estejam disponíveis em qualquer momento.
		kubectl create pdb my-pdb —selector=app=nginx —min-available=50% 
		# Descreve um node
		kubectl describe nodes kubernetes-node-emt8.c.myproject.internal

		# Descreve um pod
		kubectl describe pods/nginx

		# Descreve um pod identificado pelo tipo e nome no arquivo "pod.json"
		kubectl describe -f pod.json

		# Descreve todos os pods
		kubectl describe pods

		# Descreve os pods com label name=myLabel
		kubectl describe po -l name=myLabel

		# Descreve todos os pods gerenciados pelo replication controller 'frontend' (rc-created pods
		# tem o nome de rc como prefixo no nome do pod).
		kubectl describe pods frontend 
		# Drena o node "foo", mesmo se os pods não são gerenciados por um ReplicationController, ReplicaSet, Job, DaemonSet ou StatefulSet.
		$ kubectl drain foo —force

		# Mesmo que acima, mas é interrompido se os pods não são gerenciados por um ReplicationController, ReplicaSet, Job, DaemonSet ou StatefulSet, e tem espera por 15 minutos.
		$ kubectl drain foo —grace-period=900 
		# Edita o serviço chamado 'docker-registry':
		kubectl edit svc/docker-registry

		# Usa um editor alternativo
		KUBE_EDITOR="nano" kubectl edit svc/docker-registry

		# Edita o Job 'myjob' em JSON utilizando o format da API v1:
		kubectl edit job.v1.batch/myjob -o json

		# Edita o deployment 'mydeployment' em YAML e salva a configuração modificada em sua annotation:
		kubectl edit deployment/mydeployment -o yaml —save-config 
		# Mostra a documentação do recurso e seus campos
		kubectl explain pods

		# Mostra a documentação de um campo específico de um recurso
		kubectl explain pods.spec.containers 
		# Remove a restrição de execução de Pods no node "foo".
		$ kubectl uncordon foo 
		# Restringe a execução de novos Pods no node "foo".
		kubectl cordon foo 
		# Mostra as opções herdadas por todos os comandos
		kubectl options 
		# Imprime a versão do cliente e do servidor para o contexto atual
		kubectl version 
		# Mostra as versões de API suportadas
		kubectl api-versions 
		# Substitui um pod utlizando os dados contidos em pod.json.
		kubectl replace -f ./pod.json

		# Troca um pod com base no JSON fornecido no stdin.
		cat pod.json | kubectl replace -f -

		# Atualiza uma versão de imagem (tag) de um pod com um único container para v4
		kubectl get pod mypod -o yaml | sed 's/\(image: myimage\):.*$/:v4/' | kubectl replace -f -

		# Força a troca, removendo e recriando o recurso
		kubectl replace —force -f ./pod.json 
		# Ajusta o last-applied-configuration de um recurso para corresponder ao conteúdo de um arquivo.
		kubectl apply set-last-applied -f deploy.yaml

		# Executa o set-last-applied em todos os arquivos de configuração no diretório.
		kubectl apply set-last-applied -f path/

		# Ajusta o last-applied-configuration de um recurso para corresponder ao conteúdo de um arquivo, será criada uma annotation se esta ainda não existe.
		kubectl apply set-last-applied -f deploy.yaml —create-annotation=true
		 
		# Mostra as métricas para todos os pods no namespace default
		kubectl top pod

		# Mostra as métricas para todos os pods em um dado namespace
		kubectl top pod —namespace=NAMESPACE

		# Mostra as métricas para um dado pod e seus containers
		kubectl top pod POD_NAME —containers

		# Mostra as métricas para os pods definidos pelo label name=myLabel
		kubectl top pod -l name=myLabel 
		# Atualiza o pod 'foo' com o label 'unhealthy' e valor 'true'.
		kubectl label pods foo unhealthy=true

		# Atualiza o pod 'foo' com o label 'status' e valor 'unhealthy', sobrescrevendo qualquer valor existente.
		kubectl label —overwrite pods foo status=unhealthy

		# Atualiza todos os pods no namespace corrente
		kubectl label pods —all status=unhealthy

		# Atualiza o pod identificado pelo tipo e nome em "pod.json"
		kubectl label -f pod.json status=unhealthy

		# Atualiza o pod 'foo' apenas se o recurso não foi modificado na versão 1.
		kubectl label pods foo status=unhealthy —resource-version=1

		# Atualiza o pod 'foo' removendo o label chamado 'bar', se ele existir.
		# Não necessita a flag —overwrite.
		kubectl label pods foo bar- 
		# Visualiza a anotação last-applied-configuration pelo tipo/nome no YAML.
		kubectl apply view-last-applied deployment/nginx

		# Visualiza a anotação last-applied-configuration no arquivo JSON
		kubectl apply view-last-applied -f deploy.yaml -o json 
		Convert os arquivos de configuração para diferentes versões de API. Ambos formatos YAML
	\e JSON são aceitos.

		O command recebe o nome do arquivo, diretório ou URL como entrada, e converteno formato
		para a versão especificada pelo parametro —output-version. Se a versão desejada não é especificada ou 
		não é suportada, converte para a última versã disponível.

		A saída padrão é no formato YAML. Pode ser utilizadoa opção -o
		para mudar o formato de saída. 
		Cria um ClusterRole. 
		Cria um ClusterRoleBinding para um ClusterRole específico. 
		Cria uma RoleBinding para uma Role específica ou ClusterRole. 
		Cria um configmap com base em um arquivo, diretório, ou um valor literal especificado.

		Um configmap único pode conter um ou mais pares de chave/valor.

		Quando criar um configmap com base em um arquivo, a chave será por padrão o nome do arquivo, e o valor será
		por padrão o conteúdo do arquivo.  Se o nome do arquivo for uma chave inválida, você deve especificar uma chave alternativa.

		Quando criar um configmap com base em um diretório, cada arquivo cujo o nome é uma chave válida no diretório será
		colocada no configmap.  Qualquer entrada de diretório, exceto as com arquivos válidos serão ignorados (por exemplo: sub-diretórios,
		symlinks, devices, pipes, etc). 
		Cria um namespace com um nome especificado. 
		Cria um pod disruption budget com o nome especificado, seletor, e o número mínimo de pode disponíveis 
		Cria um resourcequota com o nome especificado, limits rigídos e escopo opcional 
		Cria uma role com uma única regra. 
		Cria uma conta de serviço com um nome especificado. 
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

		The flag —windows-line-endings can be used to force Windows line endings,
		otherwise the default for your operating system will be used.

		In the event an error occurs while updating, a temporary file will be created on disk
		that contains your unapplied changes. The most common error when updating a resource
		is another editor changing the resource on the server. When this occurs, you will have
		to apply your changes to the newer version of the resource, or update your temporary
		saved copy to include the latest resource version. 
		Remove a restrição de execução de workloads no node. 
		Aplica a restrição de execução de workloads no node. 
		Define a annotation last-applied-configuration configurando para ser igual ao conteúdo do arquivo.
		Isto resulta no last-applied-configuration ser atualizado quando o 'kubectl apply -f <file>' executa,
		não atualizando as outras partes do objeto. 
		View the latest last-applied-configuration annotations by type/name or file.

		The default output will be printed to stdout in YAML format. One can use -o option
		to change output format. 
	  # Cria um novo segredo TLS chamado tls-secret com o par the chaves fornecido:
	  kubectl create secret tls tls-secret —cert=path/to/tls.cert —key=path/to/tls.key 
	  # Cria um novo namespace chamado my-namespace
	  kubectl create namespace my-namespace 
	  # Cria um novo service account chamado my-service-account
	  kubectl create serviceaccount my-service-account 
	Cria um serviço do tipo ExternalName com o nome especificado.

	Serviço ExternalName referencia um endereço externo de DNS ao invés de
	apenas pods, o que permite aos desenvolvedores de aplicações referenciar serviços
	que existem fora da plataforma, em outros clusters ou localmente. 
	Help provê ajuda para qualquer comando na aplicação.
	Digite simplesmente kubectl help [caminho do comando] para detalhes completos. 
    # Cria um novo serviço do tipo LoadBalancer chamado my-lbs
    kubectl create service loadbalancer my-lbs —tcp=5678:8080 
    # Coleta o estado corrente do cluster e exibe no stdout
    kubectl cluster-info dump

    # Coleta o estado corrente do custer para /path/to/cluster-state
    kubectl cluster-info dump --output-directory=/path/to/cluster-state

    # Coleta informação de todos os namespaces para stdout
    kubectl cluster-info dump --all-namespaces

    # Coleta o conjunto especificado de namespaces para /path/to/cluster-state
    kubectl cluster-info dump --namespaces default,kube-system --output-directory=/path/to/cluster-state 
    # Atualiza o pod 'foo' com a annotation 'description' e o valor 'my frontend'.
    # Se a mesma annotation é configurada várias vezes, apenas o último valor será utilizado
    kubectl annotate pods foo description='my frontend'

    # Atualiza o pod identificado pelo tipo e nome definido no "pod.json"
    kubectl annotate -f pod.json description='my frontend'

    # Atualiza o pod 'foo' com a annotation 'description' e o valor 'my frontend running nginx', sobreescrevendo qualquer valor existente.
    kubectl annotate --overwrite pods foo description='my frontend running nginx'

    # Atualiza todos os pods no namespace
    kubectl annotate pods --all description='my frontend running nginx'

    # Atualiza o pod 'foo' apenas se o recurso não foi modificado na versão 1.
    kubectl annotate pods foo description='my frontend running nginx' --resource-version=1

    # Atualiza o pod 'foo' removendo a annotation chamada 'description' se ela existir.
    # Não necessita da flag --overwrite.
    kubectl annotate pods foo description- 
    Cria um serviço do tipo LoadBalancer com o nome especificado. Lista de valores delimitados por vírgulas para um conjunto de escopos de quota que devem corresponder para cada objeto rastreado pela quota. Lista de valores delimitados por vírgulas ajusta os pares resource=quantity que define um limite rigído. Um seletor de label a ser usado para o PDB. Apenas seletores baseado em igualdade são suportados. Um seletor de label para ser utilizado neste serviço. Apenas seletores baseado em igualdade são suportados. Se vazio (por padrão) o seletor do replication controller ou replica set será utilizado. Um IP externo adicional (não gerenciado pelo Kubernetes) para ser usado no serviço. Se este IP for roteado para um nó, o serviço pode ser acessado por este IP além de seu IP de serviço gerado. Uma substituição inline JSON para o objeto gerado. Se não estiver vazio, ele será usado para substituir o objeto gerado. Requer que o objeto forneça um campo apiVersion válido. Aplica a configuração para um recurso utilizado um nome de arquivo ou stdin Aprova uma solicitação de assinatura de certificado Atribuir o seu próprio ClusterIP ou configura para 'None' para um serviço 'headless' (sem loadbalancing). Se conecta a um container em execução ClusterIP que será atribuído ao serviço. Deixe vazio para auto atribuição, ou configure para 'None' para criar um serviço headless. ClusterRole que esse ClusterRoleBinding deve referenciar ClusterRole que esse RoleBinding deve referenciar Converte arquivos de configuração entre versões de API diferentes Copia arquivos e diretórios de e para containers. Cria um ClusterRoleBinding para um ClusterRole especifico Cria um serviço do tipo LoadBalancer. Cria um serviço do tipo NodePort. Cria um RoleBinding para uma Role ou ClusterRole especifico Cria uma secret do tipo TLS Cria um configmap com base em um arquivo, diretório, ou um valor literal Cria a namespace com um nome especificado Cria um pod disruption budget com um nome especificado. Cria uma quota com um nome especificado. Cria um secret para ser utilizado com o Docker registry Cria um secret com base em um arquivo, diretório ou um valor literal Cria um secret utilizando um sub-comando especificado Cria uma conta de serviço com um nome especificado Cria um service utilizando um sub-comando especificado. Cria um serviço do tipo ExternalName. Apaga os recusros por nome de arquivos, stdin, recursos e nomes, ou por recursos e seletor de label Apaga o cluster especificado do kubeconfig Apaga o contexto especificado do kubeconfig Rejeita o pedido de assinatura do certificado Mostra um ou mais contextos Mostra a utilização de recursos (CPU/Memória) nos nodes Mostra a utilização de recursos (CPU/Memória) nos pods Mostra a utilização de recursos (CPU/Memória). Mostra as informações do cluster Mostra os clusters definidos no kubeconfig Mostra a configuração do kubeconfig mescladas ou um arquivo kubeconfig especificado Mostra um ou mais recursos Mostra o contexto corrente Documentação dos recursos Drenar o node para preparação de manutenção Realiza o dump de muitas informações relevantes para debugging e diagnósticos Edita um recurso no servidor Email para o Docker registry Executa um comando em um container Encaminhar uma ou mais portas locais para um pod Ajuda sobre qualquer comando Se não vazio, configura a afinidade de sessão para o serviço; valores válidos: 'None', 'ClientIP' Se não estiver vazio, a atualização dos annotation só terá êxito se esta for a versão do recurso atual para o objeto. Válido apenas ao especificar um único recurso. Se não estiver vazio, a atualização dos labels só terá êxito se esta for a versão do recurso atual para o objeto. Válido apenas ao especificar um único recurso. Marca o node como agendável Marca o node como não agendável Marca o recurso fornecido como pausado Edita o certificado dos recursos. Edita o arquivo kubeconfig Nome ou o número da porta em um container em que o serviço deve direcionar o tráfego. Opcional. Apenas retorna os logs após uma data específica (RFC3339). Padrão para todos os logs. Apenas um since-time / since deve ser utilizado. Saída do autocomplete de shell para um Shell específico (bash ou zsh) Senha para a autenticação do registro do Docker Caminho para a chave pública em formato PEM. Caminho para a chave private associada a um certificado fornecido. Pré-condição para a versão do recurso. Requer que a versão do recurso atual corresponda a este valor para escalar. Mostra a informação de versão do cliente e do servidor Mostra a lista de opções herdadas por todos os comandos Mostra os logs de um container em um pod Substitui um recurso por um nome de arquivo ou stdin Retoma um recurso pausado Role que a RoleBinding deve referenciar Executa uma imagem específica no cluster Executa um proxy para o servidor de API do Kubernetes Localização do servidor para o registro do Docker Define funcionalidades específicas em objetos Define a anotação last-applied-configuration em um objeto existente para corresponder ao conteúdo do arquivo. Define um seletor em um recurso Define um cluster no arquivo kubeconfig Define um contexto no arquivo kubeconfig Define um usuário no arquivo kubeconfig Define um valor individual no arquivo kubeconfig Define o current-context no arquivo kubeconfig Mostra os detalhes de um recurso específico ou de um grupo de recursos Mostra o status de uma atualização dinamica Sinônimo para —target-port Pega um replication controlar, service, deployment ou pod e expõe como um novo Serviço do Kubernetes A imagem para o container executar. A política de obtenção de imagens. Se deixado em branco, este valor não será especificado pelo cliente e será utilizado o padrão do servidor Um número mínimo ou porcentagem de pods disponíveis que este budget requer. O nome para o objeto recém criado. O nome para o objeto recém criado. Se não especificado, o nome do input resource será utilizado. O nome do gerador de API a ser usado. Existem 2 geradores: 'service/v1' e 'service/v2'. A única diferença entre eles é que a porta de serviço na v1 é chamada de 'default', enquanto ela é deixada sem nome na v2. O padrão é 'service/v2'. O protocolo de rede para o serviço ser criado. Padrão é 'TCP'. A porta para que o serviço possa servir. Copiado do recurso sendo exposto, se não especificado O recurso requerido para este container.  Por exemplo, 'cpu=200m,memory=512Mi'.  Observe que os componentes do lado do servidor podem atribuir limites, dependendo da configuração do servidor, como intervalos de limite. O recurso requerido de requests para este container.  Por exemplo, 'cpu=100m,memory=256Mi'.  Observe que os componentes do lado do servidor podem atribuir requests, dependendo da configuração do servidor, como intervalos de limite. O tipo de segredo para criar Desfazer o rollout anterior Remover um valor individual do arquivo kubeconfig Atualizar a imagem de um template de pod Atualizar os recursos de request/limites em um objeto com template de pod Atualizar as anotações de um recurso Atualizar os labels de um recurso Atualizar o taints de um ou mais nodes Nome de usuário para a autenticação no Docker registry Visualizar a última anotação last-applied-configuration de um recurso/objeto Visualizar o histórico de rollout Onde colocar os arquivos de saída. Se vazio ou '-' usa o stdout do terminal, caso contrário, cria uma hierarquia no diretório configurado dummy restart flag) kubectl controla o gerenciador de cluster do Kubernetes 