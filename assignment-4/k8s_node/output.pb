/registry/apiextensions.k8s.io/customresourcedefinitions/apiservers.operator.tigera.io
{"kind":"CustomResourceDefinition","apiVersion":"apiextensions.k8s.io/v1beta1","metadata":{"name":"apiservers.operator.tigera.io","uid":"0bc33911-81ed-4038-add0-3abccaf1a35a","generation":1,"creationTimestamp":"2023-11-22T16:51:52Z","annotations":{"controller-gen.kubebuilder.io/version":"v0.3.0"},"managedFields":[{"manager":"kubectl-create","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:annotations":{".":{},"f:controller-gen.kubebuilder.io/version":{}}},"f:spec":{"f:conversion":{".":{},"f:strategy":{}},"f:group":{},"f:names":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:scope":{},"f:versions":{}}}},{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:53Z","fieldsType":"FieldsV1","fieldsV1":{"f:status":{"f:acceptedNames":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:conditions":{"k:{\"type\":\"Established\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}},"k:{\"type\":\"NamesAccepted\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}},"subresource":"status"}]},"spec":{"group":"operator.tigera.io","version":"v1","names":{"plural":"apiservers","singular":"apiserver","kind":"APIServer","listKind":"APIServerList"},"scope":"Cluster","validation":{"openAPIV3Schema":{"description":"APIServer installs the Tigera API server and related resources. At most one instance of this resource is supported. It must be named \"tigera-secure\".","type":"object","properties":{"apiVersion":{"description":"APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources","type":"string"},"kind":{"description":"Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds","type":"string"},"metadata":{"type":"object"},"spec":{"description":"Specification of the desired state for the Tigera API server.","type":"object","properties":{"apiServerDeployment":{"description":"APIServerDeployment configures the calico-apiserver (or tigera-apiserver in Enterprise) Deployment. If used in conjunction with ControlPlaneNodeSelector or ControlPlaneTolerations, then these overrides take precedence.","type":"object","properties":{"metadata":{"description":"Metadata is a subset of a Kubernetes object's metadata that is added to the Deployment.","type":"object","properties":{"annotations":{"description":"Annotations is a map of arbitrary non-identifying metadata. Each of these key/value pairs are added to the object's annotations provided the key does not already exist in the object's annotations.","type":"object","additionalProperties":{"type":"string"}},"labels":{"description":"Labels is a map of string keys and values that may match replicaset and service selectors. Each of these key/value pairs are added to the object's labels provided the key does not already exist in the object's labels.","type":"object","additionalProperties":{"type":"string"}}}},"spec":{"description":"Spec is the specification of the API server Deployment.","type":"object","properties":{"minReadySeconds":{"description":"MinReadySeconds is the minimum number of seconds for which a newly created Deployment pod should be ready without any of its container crashing, for it to be considered available. If specified, this overrides any minReadySeconds value that may be set on the API server Deployment. If omitted, the API server Deployment will use its default value for minReadySeconds.","type":"integer","format":"int32","maximum":2147483647,"minimum":0},"template":{"description":"Template describes the API server Deployment pod that will be created.","type":"object","properties":{"metadata":{"description":"Metadata is a subset of a Kubernetes object's metadata that is added to the pod's metadata.","type":"object","properties":{"annotations":{"description":"Annotations is a map of arbitrary non-identifying metadata. Each of these key/value pairs are added to the object's annotations provided the key does not already exist in the object's annotations.","type":"object","additionalProperties":{"type":"string"}},"labels":{"description":"Labels is a map of string keys and values that may match replicaset and service selectors. Each of these key/value pairs are added to the object's labels provided the key does not already exist in the object's labels.","type":"object","additionalProperties":{"type":"string"}}}},"spec":{"description":"Spec is the API server Deployment's PodSpec.","type":"object","properties":{"affinity":{"description":"Affinity is a group of affinity scheduling rules for the API server pods. If specified, this overrides any affinity that may be set on the API server Deployment. If omitted, the API server Deployment will use its default value for affinity. WARNING: Please note that this field will override the default API server Deployment affinity.","type":"object","properties":{"nodeAffinity":{"description":"Describes node affinity scheduling rules for the pod.","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"An empty preferred scheduling term matches all objects with implicit weight 0 (i.e. it's a no-op). A null preferred scheduling term matches no objects (i.e. is also a no-op).","type":"object","required":["preference","weight"],"properties":{"preference":{"description":"A node selector term, associated with the corresponding weight.","type":"object","properties":{"matchExpressions":{"description":"A list of node selector requirements by node's labels.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchFields":{"description":"A list of node selector requirements by node's fields.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}}}},"weight":{"description":"Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to an update), the system may or may not try to eventually evict the pod from its node.","type":"object","required":["nodeSelectorTerms"],"properties":{"nodeSelectorTerms":{"description":"Required. A list of node selector terms. The terms are ORed.","type":"array","items":{"description":"A null or empty node selector term matches no objects. The requirements of them are ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.","type":"object","properties":{"matchExpressions":{"description":"A list of node selector requirements by node's labels.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchFields":{"description":"A list of node selector requirements by node's fields.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}}}}}}}}},"podAffinity":{"description":"Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)","type":"object","required":["podAffinityTerm","weight"],"properties":{"podAffinityTerm":{"description":"Required. A pod affinity term, associated with the corresponding weight.","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}}},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces. This field is beta-level and is only honored when PodAffinityNamespaceSelector feature is enabled.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}}},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\"","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}},"weight":{"description":"weight associated with matching the corresponding podAffinityTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.","type":"array","items":{"description":"Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key \u003ctopologyKey\u003e matches that of any node on which a pod of the set of pods is running","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}}},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces. This field is beta-level and is only honored when PodAffinityNamespaceSelector feature is enabled.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}}},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\"","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}}}}},"podAntiAffinity":{"description":"Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling anti-affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)","type":"object","required":["podAffinityTerm","weight"],"properties":{"podAffinityTerm":{"description":"Required. A pod affinity term, associated with the corresponding weight.","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}}},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selec	tor ({}) matches all namespaces. This field is beta-level and is only honored when PodAffinityNamespaceSelector feature is enabled.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}}},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\"","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}},"weight":{"description":"weight associated with matching the corresponding podAffinityTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the anti-affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the anti-affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.","type":"array","items":{"description":"Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key \u003ctopologyKey\u003e matches that of any node on which a pod of the set of pods is running","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}}},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces. This field is beta-level and is only honored when PodAffinityNamespaceSelector feature is enabled.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}}},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\"","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}}}}}}},"containers":{"description":"Containers is a list of API server containers. If specified, this overrides the specified API server Deployment containers. If omitted, the API server Deployment will use its default values for its containers.","type":"array","items":{"description":"APIServerDeploymentContainer is an API server Deployment container.","type":"object","required":["name"],"properties":{"name":{"description":"Name is an enum which identifies the API server Deployment container by name.","type":"string","enum":["calico-apiserver","tigera-queryserver"]},"resources":{"description":"Resources allows customization of limits and requests for compute resources such as cpu and memory. If specified, this overrides the named API server Deployment container's resources. If omitted, the API server Deployment will use its default value for this container's resources. If used in conjunction with the deprecated ComponentResources, then this value takes precedence.","type":"object","properties":{"limits":{"description":"Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"requests":{"description":"Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}}}}}}},"initContainers":{"description":"InitContainers is a list of API server init containers. If specified, this overrides the specified API server Deployment init containers. If omitted, the API server Deployment will use its default values for its init containers.","type":"array","items":{"description":"APIServerDeploymentInitContainer is an API server Deployment init container.","type":"object","required":["name"],"properties":{"name":{"description":"Name is an enum which identifies the API server Deployment init container by name.","type":"string","enum":["calico-apiserver-certs-key-cert-provisioner"]},"resources":{"description":"Resources allows customization of limits and requests for compute resources such as cpu and memory. If specified, this overrides the named API server Deployment init container's resources. If omitted, the API server Deployment will use its default value for this init container's resources.","type":"object","properties":{"limits":{"description":"Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"requests":{"description":"Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}}}}}}},"nodeSelector":{"description":"NodeSelector is the API server pod's scheduling constraints. If specified, each of the key/value pairs are added to the API server Deployment nodeSelector provided the key does not already exist in the object's nodeSelector. If used in conjunction with ControlPlaneNodeSelector, that nodeSelector is set on the API server Deployment and each of this field's key/value pairs are added to the API server Deployment nodeSelector provided the key does not already exist in the object's nodeSelector. If omitted, the API server Deployment will use its default value for nodeSelector. WARNING: Please note that this field will modify the default API server Deployment nodeSelector.","type":"object","additionalProperties":{"type":"string"}},"tolerations":{"description":"Tolerations is the API server pod's tolerations. If specified, this overrides any tolerations that may be set on the API server Deployment. If omitted, the API server Deployment will use its default value for tolerations. WARNING: Please note that this field will override the default API server Deployment tolerations.","type":"array","items":{"description":"The pod this Toleration is attached to tolerates any taint that matches the triple \u003ckey,value,effect\u003e using the matching operator \u003coperator\u003e.","type":"object","properties":{"effect":{"description":"Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute.","type":"string"},"key":{"description":"Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.","type":"string"},"operator":{"description":"Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category.","type":"string"},"tolerationSeconds":{"description":"TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system.","type":"integer","format":"int64"},"value":{"description":"Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string.","type":"string"}}}}}}}}}}}}}},"status":{"description":"Most recently observed status for the Tigera API server.","type":"object","properties":{"state":{"description":"State provides user-readable status.","type":"string"}}}}}},"subresources":{"status":{}},"versions":[{"name":"v1","served":true,"storage":true}],"conversion":{"strategy":"None"},"preserveUnknownFields":false},"status":{"conditions":[{"type":"NamesAccepted","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"NoConflicts","message":"no conflicts found"},{"type":"Established","status":"True","lastTransitionTime":"2023-11-22T16:51:53Z","reason":"InitialNamesAccepted","message":"the initial names have been accepted"}],"acceptedNames":{"plural":"apiservers","singular":"apiserver","kind":"APIServer","listKind":"APIServerList"},"storedVersions":["v1"]}}

/registry/apiextensions.k8s.io/customresourcedefinitions/bgpconfigurations.crd.projectcalico.org
{"kind":"CustomResourceDefinition","apiVersion":"apiextensions.k8s.io/v1beta1","metadata":{"name":"bgpconfigurations.crd.projectcalico.org","uid":"7df1c476-7b4e-4635-81e2-9cd6496d519d","generation":1,"creationTimestamp":"2023-11-22T16:51:52Z","managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:status":{"f:acceptedNames":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:conditions":{"k:{\"type\":\"Established\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}},"k:{\"type\":\"NamesAccepted\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}},"subresource":"status"},{"manager":"kubectl-create","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:spec":{"f:conversion":{".":{},"f:strategy":{}},"f:group":{},"f:names":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:scope":{},"f:versions":{}}}}]},"spec":{"group":"crd.projectcalico.org","version":"v1","names":{"plural":"bgpconfigurations","singular":"bgpconfiguration","kind":"BGPConfiguration","listKind":"BGPConfigurationList"},"scope":"Cluster","validation":{"openAPIV3Schema":{"description":"BGPConfiguration contains the configuration for any BGP routing.","type":"object","properties":{"apiVersion":{"description":"APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources","type":"string"},"kind":{"description":"Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds","type":"string"},"metadata":{"type":"object"},"spec":{"description":"BGPConfigurationSpec contains the values of the BGP configuration.","type":"object","properties":{"asNumber":{"description":"ASNumber is the default AS number used by a node. [Default: 64512]","type":"integer","format":"int32"},"bindMode":{"description":"BindMode indicates whether to listen for BGP connections on all addresses (None) or only on the node's canonical IP address Node.Spec.BGP.IPvXAddress (NodeIP). Default behaviour is to listen for BGP connections on all addresses.","type":"string"},"communities":{"description":"Communities is a list of BGP community values and their arbitrary names for tagging routes.","type":"array","items":{"description":"Community contains standard or large community value and its name.","type":"object","properties":{"name":{"description":"Name given to community value.","type":"string"},"value":{"description":"Value must be of format `aa:nn` or `aa:nn:mm`. For standard community use `aa:nn` format, where `aa` and `nn` are 16 bit number. For large community use `aa:nn:mm` format, where `aa`, `nn` and `mm` are 32 bit number. Where, `aa` is an AS Number, `nn` and `mm` are per-AS identifier.","type":"string","pattern":"^(\\d+):(\\d+)$|^(\\d+):(\\d+):(\\d+)$"}}}},"ignoredInterfaces":{"description":"IgnoredInterfaces indicates the network interfaces that needs to be excluded when reading device routes.","type":"array","items":{"type":"string"}},"listenPort":{"description":"ListenPort is the port where BGP protocol should listen. Defaults to 179","type":"integer","maximum":65535,"minimum":1},"logSeverityScreen":{"description":"LogSeverityScreen is the log severity above which logs are sent to the stdout. [Default: INFO]","type":"string"},"nodeMeshMaxRestartTime":{"description":"Time to allow for software restart for node-to-mesh peerings.  When specified, this is configured as the graceful restart timeout.  When not specified, the BIRD default of 120s is used. This field can only be set on the default BGPConfiguration instance and requires that NodeMesh is enabled","type":"string"},"nodeMeshPassword":{"description":"Optional BGP password for full node-to-mesh peerings. This field can only be set on the default BGPConfiguration instance and requires that NodeMesh is enabled","type":"object","properties":{"secretKeyRef":{"description":"Selects a key of a secret in the node pod's namespace.","type":"object","required":["key"],"properties":{"key":{"description":"The key of the secret to select from.  Must be a valid secret key.","type":"string"},"name":{"description":"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?","type":"string"},"optional":{"description":"Specify whether the Secret or its key must be defined","type":"boolean"}}}}},"nodeToNodeMeshEnabled":{"description":"NodeToNodeMeshEnabled sets whether full node to node BGP mesh is enabled. [Default: true]","type":"boolean"},"prefixAdvertisements":{"description":"PrefixAdvertisements contains per-prefix advertisement configuration.","type":"array","items":{"description":"PrefixAdvertisement configures advertisement properties for the specified CIDR.","type":"object","properties":{"cidr":{"description":"CIDR for which properties should be advertised.","type":"string"},"communities":{"description":"Communities can be list of either community names already defined in `Specs.Communities` or community value of format `aa:nn` or `aa:nn:mm`. For standard community use `aa:nn` format, where `aa` and `nn` are 16 bit number. For large community use `aa:nn:mm` format, where `aa`, `nn` and `mm` are 32 bit number. Where,`aa` is an AS Number, `nn` and `mm` are per-AS identifier.","type":"array","items":{"type":"string"}}}}},"serviceClusterIPs":{"description":"ServiceClusterIPs are the CIDR blocks from which service cluster IPs are allocated. If specified, Calico will advertise these blocks, as well as any cluster IPs within them.","type":"array","items":{"description":"ServiceClusterIPBlock represents a single allowed ClusterIP CIDR block.","type":"object","properties":{"cidr":{"type":"string"}}}},"serviceExternalIPs":{"description":"ServiceExternalIPs are the CIDR blocks for Kubernetes Service External IPs. Kubernetes Service ExternalIPs will only be advertised if they are within one of these blocks.","type":"array","items":{"description":"ServiceExternalIPBlock represents a single allowed External IP CIDR block.","type":"object","properties":{"cidr":{"type":"string"}}}},"serviceLoadBalancerIPs":{"description":"ServiceLoadBalancerIPs are the CIDR blocks for Kubernetes Service LoadBalancer IPs. Kubernetes Service status.LoadBalancer.Ingress IPs will only be advertised if they are within one of these blocks.","type":"array","items":{"description":"ServiceLoadBalancerIPBlock represents a single allowed LoadBalancer IP CIDR block.","type":"object","properties":{"cidr":{"type":"string"}}}}}}}}},"versions":[{"name":"v1","served":true,"storage":true}],"conversion":{"strategy":"None"},"preserveUnknownFields":false},"status":{"conditions":[{"type":"NamesAccepted","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"NoConflicts","message":"no conflicts found"},{"type":"Established","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"InitialNamesAccepted","message":"the initial names have been accepted"}],"acceptedNames":{"plural":"bgpconfigurations","singular":"bgpconfiguration","kind":"BGPConfiguration","listKind":"BGPConfigurationList"},"storedVersions":["v1"]}}

/registry/apiextensions.k8s.io/customresourcedefinitions/bgpfilters.crd.projectcalico.org
{"kind":"CustomResourceDefinition","apiVersion":"apiextensions.k8s.io/v1beta1","metadata":{"name":"bgpfilters.crd.projectcalico.org","uid":"75ed843c-dfc5-490e-8d29-704183cb67cd","generation":1,"creationTimestamp":"2023-11-22T16:51:52Z","annotations":{"controller-gen.kubebuilder.io/version":"(devel)"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:status":{"f:acceptedNames":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:conditions":{"k:{\"type\":\"Established\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}},"k:{\"type\":\"NamesAccepted\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}},"subresource":"status"},{"manager":"kubectl-create","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:annotations":{".":{},"f:controller-gen.kubebuilder.io/version":{}}},"f:spec":{"f:conversion":{".":{},"f:strategy":{}},"f:group":{},"f:names":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:scope":{},"f:versions":{}}}}]},"spec":{"group":"crd.projectcalico.org","version":"v1","names":{"plural":"bgpfilters","singular":"bgpfilter","kind":"BGPFilter","listKind":"BGPFilterList"},"scope":"Cluster","validation":{"openAPIV3Schema":{"type":"object","properties":{"apiVersion":{"description":"APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources","type":"string"},"kind":{"description":"Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds","type":"string"},"metadata":{"type":"object"},"spec":{"description":"BGPFilterSpec contains the IPv4 and IPv6 filter rules of the BGP Filter.","type":"object","properties":{"exportV4":{"description":"The ordered set of IPv4 BGPFilter rules acting on exporting routes to a peer.","type":"array","items":{"description":"BGPFilterRuleV4 defines a BGP filter rule consisting a single IPv4 CIDR block and a filter action for this CIDR.","type":"object","required":["action","cidr","matchOperator"],"properties":{"action":{"type":"string"},"cidr":{"type":"string"},"matchOperator":{"type":"string"}}}},"exportV6":{"description":"The ordered set of IPv6 BGPFilter rules acting on exporting routes to a peer.","type":"array","items":{"description":"BGPFilterRuleV6 defines a BGP filter rule consisting a single IPv6 CIDR block and a filter action for this CIDR.","type":"object","required":["action","cidr","matchOperator"],"properties":{"action":{"type":"string"},"cidr":{"type":"string"},"matchOperator":{"type":"string"}}}},"importV4":{"description":"The ordered set of IPv4 BGPFilter rules acting on importing routes from a peer.","type":"array","items":{"description":"BGPFilterRuleV4 defines a BGP filter rule consisting a single IPv4 CIDR block and a filter action for this CIDR.","type":"object","required":["action","cidr","matchOperator"],"properties":{"action":{"type":"string"},"cidr":{"type":"string"},"matchOperator":{"type":"string"}}}},"importV6":{"description":"The ordered set of IPv6 BGPFilter rules acting on importing routes from a peer.","type":"array","items":{"description":"BGPFilterRuleV6 defines a BGP filter rule consisting a single IPv6 CIDR block and a filter action for this CIDR.","type":"object","required":["action","cidr","matchOperator"],"properties":{"action":{"type":"string"},"cidr":{"type":"string"},"matchOperator":{"type":"string"}}}}}}}}},"versions":[{"name":"v1","served":true,"storage":true}],"conversion":{"strategy":"None"},"preserveUnknownFields":false},"status":{"conditions":[{"type":"NamesAccepted","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"NoConflicts","message":"no conflicts found"},{"type":"Established","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"InitialNamesAccepted","message":"the initial names have been accepted"}],"acceptedNames":{"plural":"bgpfilters","singular":"bgpfilter","kind":"BGPFilter","listKind":"BGPFilterList"},"storedVersions":["v1"]}}

/registry/apiextensions.k8s.io/customresourcedefinitions/bgppeers.crd.projectcalico.org
{"kind":"CustomResourceDefinition","apiVersion":"apiextensions.k8s.io/v1beta1","metadata":{"name":"bgppeers.crd.projectcalico.org","uid":"f0add4a6-2a52-4bca-9b00-a33ee39ca865","generation":1,"creationTimestamp":"2023-11-22T16:51:52Z","managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:status":{"f:acceptedNames":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:conditions":{"k:{\"type\":\"Established\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}},"k:{\"type\":\"NamesAccepted\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}},"subresource":"status"},{"manager":"kubectl-create","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:spec":{"f:conversion":{".":{},"f:strategy":{}},"f:group":{},"f:names":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:scope":{},"f:versions":{}}}}]},"spec":{"group":"crd.projectcalico.org","version":"v1","names":{"plural":"bgppeers","singular":"bgppeer","kind":"BGPPeer","listKind":"BGPPeerList"},"scope":"Cluster","validation":{"openAPIV3Schema":{"type":"object","properties":{"apiVersion":{"description":"APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources","type":"string"},"kind":{"description":"Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds","type":"string"},"metadata":{"type":"object"},"spec":{"description":"BGPPeerSpec contains the specification for a BGPPeer resource.","type":"object","properties":{"asNumber":{"description":"The AS Number of the peer.","type":"integer","format":"int32"},"filters":{"description":"The ordered set of BGPFilters applied on this BGP peer.","type":"array","items":{"type":"string"}},"keepOriginalNextHop":{"description":"Option to keep the original nexthop field when routes are sent to a BGP Peer. Setting \"true\" configures the selected BGP Peers node to use the \"next hop keep;\" instead of \"next hop self;\"(default) in the specific branch of the Node on \"bird.cfg\".","type":"boolean"},"maxRestartTime":{"description":"Time to allow for software restart.  When specified, this is configured as the graceful restart timeout.  When not specified, the BIRD default of 120s is used.","type":"string"},"node":{"description":"The node name identifying the Calico node instance that is targeted by this peer. If this is not set, and no nodeSelector is specified, then this BGP peer selects all nodes in the cluster.","type":"string"},"nodeSelector":{"description":"Selector for the nodes that should have this peering.  When this is set, the Node field must be empty.","type":"string"},"numAllowedLocalASNumbers":{"description":"Maximum number of local AS numbers that are allowed in the AS path for received routes. This removes BGP loop prevention and should only be used if absolutely necesssary.","type":"integer","format":"int32"},"password":{"description":"Optional BGP password for the peerings generated by this BGPPeer resource.","type":"object","properties":{"secretKeyRef":{"description":"Selects a key of a secret in the node pod's namespace.","type":"object","required":["key"],"properties":{"key":{"description":"The key of the secret to select from.  Must be a valid secret key.","type":"string"},"name":{"description":"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?","type":"string"},"optional":{"description":"Specify whether the Secret or its key must be defined","type":"boolean"}}}}},"peerIP":{"description":"The IP address of the peer followed by an optional port number to peer with. If port number is given, format should be `[\u003cIPv6\u003e]:port` or `\u003cIPv4\u003e:\u003cport\u003e` for IPv4. If optional port number is not set, and this peer IP and ASNumber belongs to a calico/node with ListenPort set in BGPConfiguration, then we use that port to peer.","type":"string"},"peerSelector":{"description":"Selector for the remote nodes to peer with.  When this is set, the PeerIP and ASNumber fields must be empty.  For each peering between the local node and selected remote nodes, we configure an IPv4 peering if both ends have NodeBGPSpec.IPv4Address specified, and an IPv6 peering if both ends have NodeBGPSpec.IPv6Address specified.  The remote AS number comes from the remote node's NodeBGPSpec.ASNumber, or the global default if that is not set.","type":"string"},"reachableBy":{"description":"Add an exact, i.e. /32, static route toward peer IP in order to prevent route flapping. ReachableBy contains the address of the gateway which peer can be reached by.","type":"string"},"sourceAddress":{"description":"Specifies whether and how to configure a source address for the peerings generated by this BGPPeer resource.  Default value \"UseNodeIP\" means to configure the node IP as the source address.  \"None\" means not to configure a source address.","type":"string"},"ttlSecurity":{"description":"TTLSecurity enables the generalized TTL security mechanism (GTSM) which protects against spoofed packets by ignoring received packets with a smaller than expected TTL value. The provided value is the number of hops (edges) between the peers.","type":"integer"}}}}}},"versions":[{"name":"v1","served":true,"storage":true}],"conversion":{"strategy":"None"},"preserveUnknownFields":false},"status":{"conditions":[{"type":"NamesAccepted","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"NoConflicts","message":"no conflicts found"},{"type":"Established","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"InitialNamesAccepted","message":"the initial names have been accepted"}],"acceptedNames":{"plural":"bgppeers","singular":"bgppeer","kind":"BGPPeer","listKind":"BGPPeerList"},"storedVersions":["v1"]}}

/registry/apiextensions.k8s.io/customresourcedefinitions/blockaffinities.crd.projectcalico.org
{"kind":"CustomResourceDefinition","apiVersion":"apiextensions.k8s.io/v1beta1","metadata":{"name":"blockaffinities.crd.projectcalico.org","uid":"9b8b9a4c-8c13-46a5-8c43-d98df1a48f47","generation":1,"creationTimestamp":"2023-11-22T16:51:52Z","managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:status":{"f:acceptedNames":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:conditions":{"k:{\"type\":\"Established\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}},"k:{\"type\":\"NamesAccepted\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}},"subresource":"status"},{"manager":"kubectl-create","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:spec":{"f:conversion":{".":{},"f:strategy":{}},"f:group":{},"f:names":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:scope":{},"f:versions":{}}}}]},"spec":{"group":"crd.projectcalico.org","version":"v1","names":{"plural":"blockaffinities","singular":"blockaffinity","kind":"BlockAffinity","listKind":"BlockAffinityList"},"scope":"Cluster","validation":{"openAPIV3Schema":{"type":"object","properties":{"apiVersion":{"description":"APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources","type":"string"},"kind":{"description":"Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds","type":"string"},"metadata":{"type":"object"},"spec":{"description":"BlockAffinitySpec contains the specification for a BlockAffinity resource.","type":"object","required":["cidr","deleted","node","state"],"properties":{"cidr":{"type":"string"},"deleted":{"description":"Deleted indicates that this block affinity is being deleted. This field is a string for compatibility with older releases that mistakenly treat this field as a string.","type":"string"},"node":{"type":"string"},"state":{"type":"string"}}}}}},"versions":[{"name":"v1","served":true,"storage":true}],"conversion":{"strategy":"None"},"preserveUnknownFields":false},"status":{"conditions":[{"type":"NamesAccepted","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"NoConflicts","message":"no conflicts found"},{"type":"Established","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"InitialNamesAccepted","message":"the initial names have been accepted"}],"acceptedNames":{"plural":"blockaffinities","singular":"blockaffinity","kind":"BlockAffinity","listKind":"BlockAffinityList"},"storedVersions":["v1"]}}

/registry/apiextensions.k8s.io/customresourcedefinitions/caliconodestatuses.crd.projectcalico.org
{"kind":"CustomResourceDefinition","apiVersion":"apiextensions.k8s.io/v1beta1","metadata":{"name":"caliconodestatuses.crd.projectcalico.org","uid":"f30317cd-bb33-4968-b477-088a2a85fbf9","generation":1,"creationTimestamp":"2023-11-22T16:51:52Z","annotations":{"controller-gen.kubebuilder.io/version":"(devel)"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:status":{"f:acceptedNames":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:conditions":{"k:{\"type\":\"Established\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}},"k:{\"type\":\"NamesAccepted\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}},"subresource":"status"},{"manager":"kubectl-create","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:annotations":{".":{},"f:controller-gen.kubebuilder.io/version":{}}},"f:spec":{"f:conversion":{".":{},"f:strategy":{}},"f:group":{},"f:names":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:scope":{},"f:versions":{}}}}]},"spec":{"group":"crd.projectcalico.org","version":"v1","names":{"plural":"caliconodestatuses","singular":"caliconodestatus","kind":"CalicoNodeStatus","listKind":"CalicoNodeStatusList"},"scope":"Cluster","validation":{"openAPIV3Schema":{"type":"object","properties":{"apiVersion":{"description":"APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources","type":"string"},"kind":{"description":"Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds","type":"string"},"metadata":{"type":"object"},"spec":{"description":"CalicoNodeStatusSpec contains the specification for a CalicoNodeStatus resource.","type":"object","properties":{"classes":{"description":"Classes declares the types of information to monitor for this calico/node, and allows for selective status reporting about certain subsets of information.","type":"array","items":{"type":"string"}},"node":{"description":"The node name identifies the Calico node instance for node status.","type":"string"},"updatePeriodSeconds":{"description":"UpdatePeriodSeconds is the period at which CalicoNodeStatus should be updated. Set to 0 to disable CalicoNodeStatus refresh. Maximum update period is one day.","type":"integer","format":"int32"}}},"status":{"description":"CalicoNodeStatusStatus defines the observed state of CalicoNodeStatus. No validation needed for status since it is updated by Calico.","type":"object","properties":{"agent":{"description":"Agent holds agent status on the node.","type":"object","properties":{"birdV4":{"description":"BIRDV4 represents the latest observed status of bird4.","type":"object","properties":{"lastBootTime":{"description":"LastBootTime holds the value of lastBootTime from bird.ctl output.","type":"string"},"lastReconfigurationTime":{"description":"LastReconfigurationTime holds the value of lastReconfigTime from bird.ctl output.","type":"string"},"routerID":{"description":"Router ID used by bird.","type":"string"},"state":{"description":"The state of the BGP Daemon.","type":"string"},"version":{"description":"Version of the BGP daemon","type":"string"}}},"birdV6":{"description":"BIRDV6 represents the latest observed status of bird6.","type":"object","properties":{"lastBootTime":{"description":"LastBootTime holds the value of lastBootTime from bird.ctl output.","type":"string"},"lastReconfigurationTime":{"description":"LastReconfigurationTime holds the value of lastReconfigTime from bird.ctl output.","type":"string"},"routerID":{"description":"Router ID used by bird.","type":"string"},"state":{"description":"The state of the BGP Daemon.","type":"string"},"version":{"description":"Version of the BGP daemon","type":"string"}}}}},"bgp":{"description":"BGP holds node BGP status.","type":"object","required":["numberEstablishedV4","numberEstablishedV6","numberNotEstablishedV4","numberNotEstablishedV6"],"properties":{"numberEstablishedV4":{"description":"The total number of IPv4 established bgp sessions.","type":"integer"},"numberEstablishedV6":{"description":"The total number of IPv6 established bgp sessions.","type":"integer"},"numberNotEstablishedV4":{"description":"The total number of IPv4 non-established bgp sessions.","type":"integer"},"numberNotEstablishedV6":{"description":"The total number of IPv6 non-established bgp sessions.","type":"integer"},"peersV4":{"description":"PeersV4 represents IPv4 BGP peers status on the node.","type":"array","items":{"description":"CalicoNodePeer contains the status of BGP peers on the node.","type":"object","properties":{"peerIP":{"description":"IP address of the peer whose condition we are reporting.","type":"string"},"since":{"description":"Since the state or reason last changed.","type":"string"},"state":{"description":"State is the BGP session state.","type":"string"},"type":{"description":"Type indicates whether this peer is configured via the node-to-node mesh, or via en explicit global or per-node BGPPeer object.","type":"string"}}}},"peersV6":{"description":"PeersV6 represents IPv6 BGP peers status on the node.","type":"array","items":{"description":"CalicoNodePeer contains the status of BGP peers on the node.","type":"object","properties":{"peerIP":{"description":"IP address of the peer whose condition we are reporting.","type":"string"},"since":{"description":"Since the state or reason last changed.","type":"string"},"state":{"description":"State is the BGP session state.","type":"string"},"type":{"description":"Type indicates whether this peer is configured via the node-to-node mesh, or via en explicit global or per-node BGPPeer object.","type":"string"}}}}}},"lastUpdated":{"description":"LastUpdated is a timestamp representing the server time when CalicoNodeStatus object last updated. It is represented in RFC3339 form and is in UTC.","type":"string","format":"date-time","nullable":true},"routes":{"description":"Routes reports routes known to the Calico BGP daemon on the node.","type":"object","properties":{"routesV4":{"description":"RoutesV4 represents IPv4 routes on the node.","type":"array","items":{"description":"CalicoNodeRoute contains the status of BGP routes on the node.","type":"object","properties":{"destination":{"description":"Destination of the route.","type":"string"},"gateway":{"description":"Gateway for the destination.","type":"string"},"interface":{"description":"Interface for the destination","type":"string"},"learnedFrom":{"description":"LearnedFrom contains information regarding where this route originated.","type":"object","properties":{"peerIP":{"description":"If sourceType is NodeMesh or BGPPeer, IP address of the router that sent us this route.","type":"string"},"sourceType":{"description":"Type of the source where a route is learned from.","type":"string"}}},"type":{"description":"Type indicates if the route is being used for forwarding or not.","type":"string"}}}},"routesV6":{"description":"RoutesV6 represents IPv6 routes on the node.","type":"array","items":{"description":"CalicoNodeRoute contains the status of BGP routes on the node.","type":"object","properties":{"destination":{"description":"Destination of the route.","type":"string"},"gateway":{"description":"Gateway for the destination.","type":"string"},"interface":{"description":"Interface for the destination","type":"string"},"learnedFrom":{"description":"LearnedFrom contains information regarding where this route originated.","type":"object","properties":{"peerIP":{"description":"If sourceType is NodeMesh or BGPPeer, IP address of the router that sent us this route.","type":"string"},"sourceType":{"description":"Type of the source where a route is learned from.","type":"string"}}},"type":{"description":"Type indicates if the route is being used for forwarding or not.","type":"string"}}}}}}}}}}},"versions":[{"name":"v1","served":true,"storage":true}],"conversion":{"strategy":"None"},"preserveUnknownFields":false},"status":{"conditions":[{"type":"NamesAccepted","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"NoConflicts","message":"no conflicts found"},{"type":"Established","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"InitialNamesAccepted","message":"the initial names have been accepted"}],"acceptedNames":{"plural":"caliconodestatuses","singular":"caliconodestatus","kind":"CalicoNodeStatus","listKind":"CalicoNodeStatusList"},"storedVersions":["v1"]}}

/registry/apiextensions.k8s.io/customresourcedefinitions/clusterinformations.crd.projectcalico.org
{"kind":"CustomResourceDefinition","apiVersion":"apiextensions.k8s.io/v1beta1","metadata":{"name":"clusterinformations.crd.projectcalico.org","uid":"defd203e-a45c-421c-9d79-0b0ec15883ff","generation":1,"creationTimestamp":"2023-11-22T16:51:52Z","managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:status":{"f:acceptedNames":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:conditions":{"k:{\"type\":\"Established\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}},"k:{\"type\":\"NamesAccepted\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}},"subresource":"status"},{"manager":"kubectl-create","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:spec":{"f:conversion":{".":{},"f:strategy":{}},"f:group":{},"f:names":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:scope":{},"f:versions":{}}}}]},"spec":{"group":"crd.projectcalico.org","version":"v1","names":{"plural":"clusterinformations","singular":"clusterinformation","kind":"ClusterInformation","listKind":"ClusterInformationList"},"scope":"Cluster","validation":{"openAPIV3Schema":{"description":"ClusterInformation contains the cluster specific information.","type":"object","properties":{"apiVersion":{"description":"APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources","type":"string"},"kind":{"description":"Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds","type":"string"},"metadata":{"type":"object"},"spec":{"description":"ClusterInformationSpec contains the values of describing the cluster.","type":"object","properties":{"calicoVersion":{"description":"CalicoVersion is the version of Calico that the cluster is running","type":"string"},"clusterGUID":{"description":"ClusterGUID is the GUID of the cluster","type":"string"},"clusterType":{"description":"ClusterType describes the type of the cluster","type":"string"},"datastoreReady":{"description":"DatastoreReady is used during significant datastore migrations to signal to components such as Felix that it should wait before accessing the datastore.","type":"boolean"},"variant":{"description":"Variant declares which variant of Calico should be active.","type":"string"}}}}}},"versions":[{"name":"v1","served":true,"storage":true}],"conversion":{"strategy":"None"},"preserveUnknownFields":false},"status":{"conditions":[{"type":"NamesAccepted","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"NoConflicts","message":"no conflicts found"},{"type":"Established","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"InitialNamesAccepted","message":"the initial names have been accepted"}],"acceptedNames":{"plural":"clusterinformations","singular":"clusterinformation","kind":"ClusterInformation","listKind":"ClusterInformationList"},"storedVersions":["v1"]}}

/registry/apiextensions.k8s.io/customresourcedefinitions/felixconfigurations.crd.projectcalico.org
{"kind":"CustomResourceDefinition","apiVersion":"apiextensions.k8s.io/v1beta1","metadata":{"name":"felixconfigurations.crd.projectcalico.org","uid":"b719bbb2-5e6c-462b-826d-859dd2ad5cbf","generation":1,"creationTimestamp":"2023-11-22T16:51:52Z","managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:status":{"f:acceptedNames":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:conditions":{"k:{\"type\":\"Established\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}},"k:{\"type\":\"NamesAccepted\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}},"subresource":"status"},{"manager":"kubectl-create","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:spec":{"f:conversion":{".":{},"f:strategy":{}},"f:group":{},"f:names":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:scope":{},"f:versions":{}}}}]},"spec":{"group":"crd.projectcalico.org","version":"v1","names":{"plural":"felixconfigurations","singular":"felixconfiguration","kind":"FelixConfiguration","listKind":"FelixConfigurationList"},"scope":"Cluster","validation":{"openAPIV3Schema":{"description":"Felix Configuration contains the configuration for Felix.","type":"object","properties":{"apiVersion":{"description":"APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources","type":"string"},"kind":{"description":"Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds","type":"string"},"metadata":{"type":"object"},"spec":{"description":"FelixConfigurationSpec contains the values of the Felix configuration.","type":"object","properties":{"allowIPIPPacketsFromWorkloads":{"description":"AllowIPIPPacketsFromWorkloads controls whether Felix will add a rule to drop IPIP encapsulated traffic from workloads [Default: false]","type":"boolean"},"allowVXLANPacketsFromWorkloads":{"description":"AllowVXLANPacketsFromWorkloads controls whether Felix will add a rule to drop VXLAN encapsulated traffic from workloads [Default: false]","type":"boolean"},"awsSrcDstCheck":{"description":"Set source-destination-check on AWS EC2 instances. Accepted value must be one of \"DoNothing\", \"Enable\" or \"Disable\". [Default: DoNothing]","type":"string","enum":["DoNothing","Enable","Disable"]},"bpfConnectTimeLoadBalancingEnabled":{"description":"BPFConnectTimeLoadBalancingEnabled when in BPF mode, controls whether Felix installs the connection-time load balancer.  The connect-time load balancer is required for the host to be able to reach Kubernetes services and it improves the performance of pod-to-service connections.  The only reason to disable it is for debugging purposes.  [Default: true]","type":"boolean"},"bpfDSROptoutCIDRs":{"description":"BPFDSROptoutCIDRs is a list of CIDRs which are excluded from DSR. That is, clients in those CIDRs will accesses nodeports as if BPFExternalServiceMode was set to Tunnel.","type":"array","items":{"type":"string"}},"bpfDataIfacePattern":{"description":"BPFDataIfacePattern is a regular expression that controls which interfaces Felix should attach BPF programs to in order to catch traffic to/from the network.  This needs to match the interfaces that Calico workload traffic flows over as well as any interfaces that handle incoming traffic to nodeports and services from outside the cluster.  It should not match the workload interfaces (usually named cali...).","type":"string"},"bpfDisableUnprivileged":{"description":"BPFDisableUnprivileged, if enabled, Felix sets the kernel.unprivileged_bpf_disabled sysctl to disable unprivileged use of BPF.  This ensures that unprivileged users cannot access Calico's BPF maps and cannot insert their own BPF programs to interfere with Calico's. [Default: true]","type":"boolean"},"bpfEnabled":{"description":"BPFEnabled, if enabled Felix will use the BPF dataplane. [Default: false]","type":"boolean"},"bpfEnforceRPF":{"description":"BPFEnforceRPF enforce strict RPF on all host interfaces with BPF programs regardless of what is the per-interfaces or global setting. Possible values are Disabled, Strict or Loose. [Default: Loose]","type":"string"},"bpfExtToServiceConnmark":{"description":"BPFExtToServiceConnmark in BPF mode, control a 32bit mark that is set on connections from an external client to a local service. This mark allows us to control how packets of that connection are routed within the host and how is routing interpreted by RPF check. [Default: 0]","type":"integer"},"bpfExternalServiceMode":{"description":"BPFExternalServiceMode in BPF mode, controls how connections from outside the cluster to services (node ports and cluster IPs) are forwarded to remote workloads.  If set to \"Tunnel\" then both request and response traffic is tunneled to the remote node.  If set to \"DSR\", the request traffic is tunneled but the response traffic is sent directly from the remote node.  In \"DSR\" mode, the remote node appears to use the IP of the ingress node; this requires a permissive L2 network.  [Default: Tunnel]","type":"string"},"bpfHostConntrackBypass":{"description":"BPFHostConntrackBypass Controls whether to bypass Linux conntrack in BPF mode for workloads and services. [Default: true - bypass Linux conntrack]","type":"boolean"},"bpfKubeProxyEndpointSlicesEnabled":{"description":"BPFKubeProxyEndpointSlicesEnabled in BPF mode, controls whether Felix's embedded kube-proxy accepts EndpointSlices or not.","type":"boolean"},"bpfKubeProxyIptablesCleanupEnabled":{"description":"BPFKubeProxyIptablesCleanupEnabled, if enabled in BPF mode, Felix will proactively clean up the upstream Kubernetes kube-proxy's iptables chains.  Should only be enabled if kube-proxy is not running.  [Default: true]","type":"boolean"},"bpfKubeProxyMinSyncPeriod":{"description":"BPFKubeProxyMinSyncPeriod, in BPF mode, controls the minimum time between updates to the dataplane for Felix's embedded kube-proxy.  Lower values give reduced set-up latency.  Higher values reduce Felix CPU usage by batching up more work.  [Default: 1s]","type":"string"},"bpfL3IfacePattern":{"description":"BPFL3IfacePattern is a regular expression that allows to list tunnel devices like wireguard or vxlan (i.e., L3 devices) in addition to BPFDataIfacePattern. That is, tunnel interfaces not created by Calico, that Calico workload traffic flows over as well as any interfaces that handle incoming traffic to nodeports and services from outside the cluster.","type":"string"},"bpfLogLevel":{"description":"BPFLogLevel controls the log level of the BPF programs when in BPF dataplane mode.  One of \"Off\", \"Info\", or \"Debug\".  The logs are emitted to the BPF trace pipe, accessible with the command `tc exec bpf debug`. [Default: Off].","type":"string"},"bpfMapSizeConntrack":{"description":"BPFMapSizeConntrack sets the size for the conntrack map.  This map must be large enough to hold an entry for each active connection.  Warning: changing the size of the conntrack map can cause disruption.","type":"integer"},"bpfMapSizeIPSets":{"description":"BPFMapSizeIPSets sets the size for ipsets map.  The IP sets map must be large enough to hold an entry for each endpoint matched by every selector in the source/destination matches in network policy.  Selectors such as \"all()\" can result in large numbers of entries (one entry per endpoint in that case).","type":"integer"},"bpfMapSizeIfState":{"description":"BPFMapSizeIfState sets the size for ifstate map.  The ifstate map must be large enough to hold an entry for each device (host + workloads) on a host.","type":"integer"},"bpfMapSizeNATAffinity":{"type":"integer"},"bpfMapSizeNATBackend":{"description":"BPFMapSizeNATBackend sets the size for nat back end map. This is the total number of endpoints. This is mostly more than the size of the number of services.","type":"integer"},"bpfMapSizeNATFrontend":{"description":"BPFMapSizeNATFrontend sets the size for nat front end map. FrontendMap should be large enough to hold an entry for each nodeport, external IP and each port in each service.","type":"integer"},"bpfMapSizeRoute":{"description":"BPFMapSizeRoute sets the size for the routes map.  The routes map should be large enough to hold one entry per workload and a handful of entries per host (enough to cover its own IPs and tunnel IPs).","type":"integer"},"bpfPSNATPorts":{"description":"BPFPSNATPorts sets the range from which we randomly pick a port if there is a source port collision. This should be within the ephemeral range as defined by RFC 6056 (1024–65535) and preferably outside the  ephemeral ranges used by common operating systems. Linux uses 32768–60999, while others mostly use the IANA defined range 49152–65535. It is not necessarily a problem if this range overlaps with the operating systems. Both ends of the range are inclusive. [Default: 20000:29999]","pattern":"^.*","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true},"bpfPolicyDebugEnabled":{"description":"BPFPolicyDebugEnabled when true, Felix records detailed information about the BPF policy programs, which can be examined with the calico-bpf command-line tool.","type":"boolean"},"chainInsertMode":{"description":"ChainInsertMode controls whether Felix hooks the kernel's top-level iptables chains by inserting a rule at the top of the chain or by appending a rule at the bottom. insert is the safe default since it prevents Calico's rules from being bypassed. If you switch to append mode, be sure that the other rules in the chains signal acceptance by falling through to the Calico rules, otherwise the Calico policy will be bypassed. [Default: insert]","type":"string"},"dataplaneDriver":{"description":"DataplaneDriver filename of the external dataplane driver to use.  Only used if UseInternalDataplaneDriver is set to false.","type":"string"},"dataplaneWatchdogTimeout":{"description":"DataplaneWatchdogTimeout is the readiness/liveness timeout used for Felix's (internal) dataplane driver. Increase this value if you experience spurious non-ready or non-live events when Felix is under heavy load. Decrease the value to get felix to report non-live or non-ready more quickly. [Default: 90s] \n Deprecated: replaced by the generic HealthTimeoutOverrides.","type":"string"},"debugDisableLogDropping":{"type":"boolean"},"debugMemoryProfilePath":{"type":"string"},"debugSimulateCalcGraphHangAfter":{"type":"string"},"debugSimulateDataplaneHangAfter":{"type":"string"},"defaultEndpointToHostAction":{"description":"DefaultEndpointToHostAction controls what happens to traffic that goes from a workload endpoint to the host itself (after the traffic hits the endpoint egress policy). By default Calico blocks traffic from workload endpoints to the host itself with an iptables \"DROP\" action. If you want to allow some or all traffic from endpoint to host, set this parameter to RETURN or ACCEPT. Use RETURN if you have your own rules in the iptables \"INPUT\" chain; Calico will insert its rules at the top of that chain, then \"RETURN\" packets to the \"INPUT\" chain once it has completed processing workload endpoint egress policy. Use ACCEPT to unconditionally accept packets from workloads after processing workload endpoint egress policy. [Default: Drop]","type":"string"},"deviceRouteProtocol":{"description":"This defines the route protocol added to programmed device routes, by default this will be RTPROT_BOOT when left blank.","type":"integer"},"deviceRouteSourceAddress":{"description":"This is the IPv4 source address to use on programmed device routes. By default the source address is left blank, leaving the kernel to choose the source address used.","type":"string"},"deviceRouteSourceAddressIPv6":{"description":"This is the IPv6 source address to use on programmed device routes. By default the source address is left blank, leaving the kernel to choose the source address used.","type":"string"},"disableConntrackInvalidCheck":{"type":"boolean"},"endpointReportingDelay":{"type":"string"},"endpointReportingEnabled":{"type":"boolean"},"externalNodesList":{"description":"ExternalNodesCIDRList is a list of CIDR's of external-non-calico-nodes which may source tunnel traffic and have the tunneled traffic be accepted at calico nodes.","type":"array","items":{"type":"string"}},"failsafeInboundHostPorts":{"description":"FailsafeInboundHostPorts is a list of UDP/TCP ports and CIDRs that Felix will allow incoming traffic to host endpoints on irrespective of the security policy. This is useful to avoid accidentally cutting off a host with incorrect configuration. For back-compatibility, if the protocol is not specified, it defaults to \"tcp\". If a CIDR is not specified, it will allow traffic from all addresses. To disable all inbound host ports, use the value none. The default value allows ssh access and DHCP. [Default: tcp:22, udp:68, tcp:179, tcp:2379, tcp:2380, tcp:6443, tcp:6666, tcp:6667]","type":"array","items":{"description":"ProtoPort is combination of protocol, port, and CIDR. Protocol and port must be specified.","type":"object","required":["port","protocol"],"properties":{"net":{"type":"string"},"port":{"type":"integer"},"protocol":{"type":"string"}}}},"failsafeOutboundHostPorts":{"description":"FailsafeOutboundHostPorts is a list of UDP/TCP ports and CIDRs that Felix will allow outgoing traffic from host endpoints to irrespective of the security policy. This is useful to avoid accidentally cutting off a host with incorrect configuration. For back-compatibility, if the protocol is not specified, it defaults to \"tcp\". If a CIDR is not specified, it will allow traffic from all addresses. To disable all outbound host ports, use the value none. The default value opens etcd's standard ports to ensure that Felix does not get cut off from etcd as well as allowing DHCP and DNS. [Default: tcp:179, tcp:2379, tcp:2380, tcp:6443, tcp:6666, tcp:6667, udp:53, udp:67]","type":"array","items":{"description":"ProtoPort is combination of protocol, port, and CIDR. Protocol and port must be specified.","type":"object","required":["port","protocol"],"properties":{"net":{"type":"string"},"port":{"type":"integer"},"protocol":{"type":"string"}}}},"featureDetectOverride":{"description":"FeatureDetectOverride is used to override feature detection based on auto-detected platform capabilities.  Values are specified in a comma separated list with no spaces, example; \"SNATFullyRandom=true,MASQFullyRandom=false,RestoreSupportsLock=\".  \"true\" or \"false\" will force the feature, empty or omitted values are auto-detected.","type":"string"},"featureGates":{"description":"FeatureGates is used to enable or disable tech-preview Calico features. Values are specified in a comma separated list with no spaces, example; \"BPFConnectTimeLoadBalancingWorkaround=enabled,XyZ=false\". This is used to enable features that are not fully production ready.","type":"string"},"floatingIPs":{"description":"FloatingIPs configures whether or not Felix will program non-OpenStack floating IP addresses.  (OpenStack-derived floating IPs are always programmed, regardless of this setting.)","type":"string","enum":["Enabled","Disabled"]},"genericXDPEnabled":{"description":"GenericXDPEnabled enables Generic XDP so network cards that don't support XDP offload or driver modes can use XDP. This is not recommended since it doesn't provide better performance than iptables. [Default: false]","type":"boolean"},"healthEnabled":{"type":"boolean"},"healthHost":{"type":"string"},"healthPort":{"type":"integer"},"healthTimeoutOverrides":{"description":"HealthTimeoutOverrides allows the internal watchdog timeouts of individual subcomponents to be overridden.  This is useful for working around \"false positive\" liveness timeouts that can occur in particularly stressful workloads or if CPU is constrained.  For a list of active subcomponents, see Felix's logs.","type":"array","items":{"type":"object","required":["name","timeout"],"properties":{"name":{"type":"string"},"timeout":{"type":"string"}}}},"interfaceExclude":{"description":"InterfaceExclude is a comma-separated list of interfaces that Felix should exclude when monitoring for host endpoints. The default value ensures that Felix ignores Kubernetes' IPVS dummy interface, which is used internally by kube-proxy. If you want to exclude multiple interface names using a single value, the list supports regular expressions. For regular expressions you must wrap the value with '/'. For example having values '/^kube/,veth1' will exclude all interfaces that begin with 'kube' and also the interface 'veth1'. [Default: kube-ipvs0]","type":"string"},"interfacePrefix":{"description":"InterfacePrefix is the interface name prefix that identifies workload endpoints and so distinguishes them from host endpoint interfaces. Note: in environments other than bare metal, the orchestrators configure this appropriately. For example our Kubernetes and Docker integrations set the 'cali' value, and our OpenStack integration sets the 'tap' value. [Default: cali]","type":"string"},"interfaceRefreshInterval":{"description":"InterfaceRefreshInterval is the period at which Felix rescans local interfaces to verify their state. The rescan can be disabled by setting the interval to 0.","type":"string"},"ipipEnabled":{"description":"IPIPEnabled overrides whether Felix should configure an IPIP interface on the host. Optional as Felix determines this based on the existing IP pools. [Default: nil (unset)]","type":"boolean"},"ipipMTU":{"description":"IPIPMTU is the MTU to set on the tunnel device. See Configuring MTU [Default: 1440]","type":"integer"},"ipsetsRefreshInterval":{"description":"IpsetsRefreshInterval is the period at which Felix re-checks all iptables state to ensure that no other process has accidentally broken Calico's rules. Set to 0 to disable iptables refresh. [Default: 90s]","type":"string"},"iptablesBackend":{"description":"IptablesBackend specifies which backend of iptables will be used. The default is Auto.","type":"string"},"iptablesFilterAllowAction":{"type":"string"},"iptablesFilterDenyAction":{"description":"IptablesFilterDenyAction controls what happens to traffic that is denied by network policy. By default Calico blocks traffic with an iptables \"DROP\" action. If you want to use \"REJECT\" action instead you can configure it in here.","type":"string"},"iptablesLockFilePath":{"description":"IptablesLockFilePath is the location of the iptables lock file. You may need to change this if the lock file is not in its standard location (for example if you have mapped it into Felix's container at a different path). [Default: /run/xtables.lock]","type":"string"},"iptablesLockProbeInterval":{"description":"IptablesLockProbeInterval is the time that Felix will wait between attempts to acquire the iptables lock if it is not available. Lower values make Felix more responsive when the lock is contended, but use more CPU. [Default: 50ms]","type":"string"},"iptablesLockTimeout":{"description":"IptablesLockTimeout is the time that Felix will wait for the iptables lock, or 0, to disable. To use this feature, Felix must share the iptables lock file with all other processes that also take the lock. When running Felix inside a container, this requires the /run directory of the host to be mounted into the calico/node or calico/felix container. [Default: 0s disabled]","type":"string"},"iptablesMangleAllowAction":{"type":"string"},"iptablesMarkMask":{"description":"IptablesMarkMask is the mask that Felix selects its IPTables Mark bits from. Should be a 32 bit hexadecimal number with at least 8 bits set, none of which clash with any other mark bits in use on the system. [Default: 0xff000000]","type":"integer","format":"int32"},"iptablesNATOutgoingInterfaceFilter":{"type":"string"},"iptablesPostWriteCheckInterval":{"description":"IptablesPostWriteCheckInterval is the period after Felix has done a write to the dataplane that it schedules an extra read back in order to check the write was not clobbered by another process. This should only occur if another application on the system doesn't respect the iptables lock. [Default: 1s]","type":"string"},"iptablesRefreshInterval":{"description":"IptablesRefreshInterval is the period at which Felix re-checks the IP sets in the dataplane to ensure that no other process has accidentally broken Calico's rules. Set to 0 to disable IP sets refresh. Note: the default for this value is lower than the other refresh intervals as a workaround for a Linux kernel bug that was fixed in kernel version 4.11. If you are using v4.11 or greater you may want to set this to, a higher value to reduce Felix CPU usage. [Default: 10s]","type":"string"},"ipv6Support":{"description":"IPv6Support controls whether Felix enables support for IPv6 (if supported by the in-use dataplane).","type":"boolean"},"kubeNodePortRanges":{"description":"KubeNodePortRanges holds list of port ranges used for service node ports. Only used if felix detects kube-proxy running in ipvs mode. Felix uses these ranges to separate host and workload traffic. [Default: 30000:32767].","type":"array","items":{"pattern":"^.*","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"logDebugFilenameRegex":{"description":"LogDebugFilenameRegex controls which source code files have their Debug log output included in the logs. Only logs from files with names that match the given regular expression are included.  The filter only applies to Debug level logs.","type":"string"},"logFilePath":{"description":"LogFilePath is the full path to the Felix log. Set to none to disable file logging. [Default: /var/log/calico/felix.log]","type":"string"},"logPrefix":{"description":"LogPrefix is the log prefix that Felix uses when rendering LOG rules. [Default: calico-packet]","type":"string"},"logSeverityFile":{"description":"LogSeverityFile is the log severity above which logs are sent to the log file. [Default: Info]","type":"string"},"logSeverityScreen":{"description":"LogSeverityScreen is the log severity above which logs are sent to the stdout. [Default: Info]","type":"string"},"logSeveritySys":{"description":"LogSeveritySys is the log severity above which logs are sent to the syslog. Set to None for no logging to syslog. [Default: Info]","type":"string"},"maxIpsetSize":{"type":"integer"},"metadataAddr":{"description":"MetadataAddr is the IP address or domain name of the server that can answer VM queries for cloud-init metadata. In OpenStack, this corresponds to the machine running nova-api (or in Ubuntu, nova-api-metadata). A value of none (case insensitive) means that Felix should not set up any NAT rule for the metadata path. [Default: 127.0.0.1]","type":"string"},"metadataPort":{"description":"MetadataPort is the port of the metadata server. This, combined with global.MetadataAddr (if not 'None'), is used to set up a NAT rule, from 169.254.169.254:80 to MetadataAddr:MetadataPort. In most cases this should not need to be changed [Default: 8775].","type":"integer"},"mtuIfacePattern":{"description":"MTUIfacePattern is a regular expression that controls which interfaces Felix should scan in order to calculate the host's MTU. This should not match workload interfaces (usually named cali...).","type":"string"},"natOutgoingAddress":{"description":"NATOutgoingAddress specifies an address to use when performing source NAT for traffic in a natOutgoing pool that is leaving the network. By default the address used is an address on the interface the traffic is leaving on (ie it uses the iptables MASQUERADE target)","type":"string"},"natPortRange":{"description":"NATPortRange specifies the range of ports that is used for port mapping when doing outgoing NAT. When unset the default behavior of the network stack is used.","pattern":"^.*","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true},"netlinkTimeout":{"type":"string"},"openstackRegion":{"description":"OpenstackRegion is the name of the region that a particular Felix belongs to. In a multi-region Calico/OpenStack deployment, this must be configured somehow for each Felix (here in the datamodel, or in felix.cfg or the environment on each compute node), and must match the [calico] openstack_region value configured in neutron.conf on each node. [Default: Empty]","type":"string"},"policySyncPathPrefix":{"description":"PolicySyncPathPrefix is used to by Felix to communicate policy changes to external services, like Application layer policy. [Default: Empty]","type":"string"},"prometheusGoMetricsEnabled":{"description":"PrometheusGoMetricsEnabled disables Go runtime metrics collection, which the Prometheus client does by default, when set to false. This reduces the number of metrics reported, reducing Prometheus load. [Default: true]","type":"boolean"},"prometheusMetricsEnabled":{"description":"PrometheusMetricsEnabled enables the Prometheus metrics server in Felix if set to true. [Default: false]","type":"boolean"},"prometheusMetricsHost":{"description":"PrometheusMetricsHost is the host that the Prometheus metrics server should bind to. [Default: empty]","type":"string"},"prometheusMetricsPort":{"description":"PrometheusMetricsPort is the TCP port that the Prometheus metrics server should bind to. [Default: 9091]","type":"integer"},"prometheusProcessMetricsEnabled":{"description":"PrometheusProcessMetricsEnabled disables process metrics collection, which the Prometheus client does by default, when set to false. This reduces the number of metrics reported, reducing Prometheus load. [Default: true]","type":"boolean"},"prometheusWireGuardMetricsEnabled":{"description":"PrometheusWireGuardMetricsEnabled disables wireguard metrics collection, which the Prometheus client does by default, when set to false. This reduces the number of metrics reported, reducing Prometheus load. [Default: true]","type":"boolean"},"removeExternalRoutes":{"description":"Whether or not to remove device routes that have not been programmed by Felix. Disabling this will allow external applications to also add device routes. This is enabled by default which means we will remove externally added routes.","type":"boolean"},"reportingInterval":{"description":"ReportingInterval is the interval at which Felix reports its status into the datastore or 0 to disable. Must be non-zero in OpenStack deployments. [Default: 30s]","type":"string"},"reportingTTL":{"description":"ReportingTTL is the time-to-live setting for process-wide status reports. [Default: 90s]","type":"string"},"routeRefreshInterval":{"description":"RouteRefreshInterval is the period at which Felix re-checks the routes in the dataplane to ensure that no other process has accidentally broken Calico's rules. Set to 0 to disable route refresh. [Default: 90s]","type":"string"},"routeSource":{"description":"RouteSource configures where Felix gets its routing information. - WorkloadIPs: use workload endpoints to construct routes. - CalicoIPAM: the default - use IPAM data to construct routes.","type":"string"},"routeSyncDisabled":{"description":"RouteSyncDisabled will disable all operations performed on the route table. Set to true to run in network-policy mode only.","type":"boolean"},"routeTableRange":{"description":"Deprecated in favor of RouteTableRanges. Calico programs additional Linux route tables for various purposes. RouteTableRange specifies the indices of the route tables that Calico should use.","type":"object","required":["max","min"],"properties":{"max":{"type":"integer"},"min":{"type":"integer"}}},"routeTableRanges":{"description":"Calico programs additional Linux route tables for various purposes. RouteTableRanges specifies a set of table index ranges that Calico should use. Deprecates`RouteTableRange`, overrides `RouteTableRange`.","type":"array","items":{"type":"object","required":["max","min"],"properties":{"max":{"type":"integer"},"min":{"type":"integer"}}}},"serviceLoopPrevention":{"description":"When service IP advertisement is enabled, prevent routing loops to service IPs that are not in use, by dropping or rejecting packets that do not get DNAT'd by kube-proxy. Unless set to \"Disabled\", in which case such routing loops continue to be allowed. [Default: Drop]","type":"string"},"sidecarAccelerationEnabled":{"description":"SidecarAccelerationEnabled enables experimental sidecar acceleration [Default: false]","type":"boolean"},"usageReportingEnabled":{"description":"UsageReportingEnabled reports anonymous Calico version number and cluster size to projectcalico.org. Logs warnings returned by the usage server. For example, if a significant security vulnerability has been discovered in the version of Calico being used. [Default: true]","type":"boolean"},"usageReportingInitialDelay":{"description":"UsageReportingInitialDelay controls the minimum delay before Felix makes a report. [Default: 300s]","type":"string"},"usageReportingInterval":{"description":"UsageReportingInterval controls the interval at which Felix makes reports. [Default: 86400s]","type":"string"},"useInternalDataplaneDriver":{"description":"UseInternalDataplaneDriver, if true, Felix will use its internal dataplane programming logic.  If false, it will launch an external dataplane driver and communicate with it over protobuf.","type":"boolean"},"vxlanEnabled":{"description":"VXLANEnabled overrides whether Felix should create the VXLAN tunnel device for IPv4 VXLAN networking. Optional as Felix determines this based on the existing IP pools. [Default: nil (unset)]","type":"boolean"},"vxlanMTU":{"description":"VXLANMTU is the MTU to set on the IPv4 VXLAN tunnel device. See Configuring MTU [Default: 1410]","type":"integer"},"vxlanMTUV6":{"description":"VXLANMTUV6 is the MTU to set on the IPv6 VXLAN tunnel device. See Configuring MTU [Default: 1390]","type":"integer"},"vxlanPort":{"type":"integer"},"vxlanVNI":{"type":"integer"},"wireguardEnabled":{"description":"WireguardEnabled controls whether Wireguard is enabled for IPv4 (encapsulating IPv4 traffic over an IPv4 underlay network). [Default: false]","type":"boolean"},"wireguardEnabledV6":{"description":"WireguardEnabledV6 controls whether Wireguard is enabled for IPv6 (encapsulating IPv6 traffic over an IPv6 underlay network). [Default: false]","type":"boolean"},"wireguardHostEncryptionEnabled":{"description":"WireguardHostEncryptionEnabled controls whether Wireguard host-to-host encryption is enabled. [Default: false]","type":"boolean"},"wireguardInterfaceName":{"description":"WireguardInterfaceName specifies the name to use for the IPv4 Wireguard interface. [Default: wireguard.cali]","type":"string"},"wireguardInterfaceNameV6":{"description":"WireguardInterfaceNameV6 specifies the name to use for the IPv6 Wireguard interface. [Default: wg-v6.cali]","type":"string"},"wireguardKeepAlive":{"description":"WireguardKeepAlive controls Wireguard PersistentKeepalive option. Set 0 to disable. [Default: 0]","type":"string"},"wireguardListeningPort":{"description":"WireguardListeningPort controls the listening port used by IPv4 Wireguard. [Default: 51820]","type":"integer"},"wireguardListeningPortV6":{"description":"WireguardListeningPortV6 controls the listening port used by IPv6 Wireguard. [Default: 51821]","type":"integer"},"wireguardMTU":{"description":"WireguardMTU controls the MTU on the IPv4 Wireguard interface. See Configuring MTU [Default: 1440]","type":"integer"},"wireguardMTUV6":{"description":"WireguardMTUV6 controls the MTU on the IPv6 Wireguard interface. See Configuring MTU [Default: 1420]","type":"integer"},"wireguardRoutingRulePriority":{"description":"WireguardRoutingRulePriority controls the priority value to use for the Wireguard routing rule. [Default: 99]","type":"integer"},"workloadSourceSpoofing":{"description":"WorkloadSourceSpoofing controls whether pods can use the allowedSourcePrefixes annotation to send traffic with a source IP address that is not theirs. This is disabled by default. When set to \"Any\", pods can request any prefix.","type":"string"},"xdpEnabled":{"description":"XDPEnabled enables XDP acceleration for suitable untracked incoming deny rules. [Default: true]","type":"boolean"},"xdpRefreshInterval":{"description":"XDPRefreshInterval is the period at which Felix re-checks all XDP state to ensure that no other process has accidentally broken Calico's BPF maps or attached programs. Set to 0 to disable XDP refresh. [Default: 90s]","type":"string"}}}}}},"versions":[{"name":"v1","served":true,"storage":true}],"conversion":{"strategy":"None"},"preserveUnknownFields":false},"status":{"conditions":[{"type":"NamesAccepted","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"NoConflicts","message":"no conflicts found"},{"type":"Established","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"InitialNamesAccepted","message":"the initial names have been accepted"}],"acceptedNames":{"plural":"felixconfigurations","singular":"felixconfiguration","kind":"FelixConfiguration","listKind":"FelixConfigurationList"},"storedVersions":["v1"]}}

/registry/apiextensions.k8s.io/customresourcedefinitions/globalnetworkpolicies.crd.projectcalico.org
{"kind":"CustomResourceDefinition","apiVersion":"apiextensions.k8s.io/v1beta1","metadata":{"name":"globalnetworkpolicies.crd.projectcalico.org","uid":"f8f3264c-0b73-47fc-b416-4fe31c9c7784","generation":1,"creationTimestamp":"2023-11-22T16:51:52Z","managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:status":{"f:acceptedNames":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:conditions":{"k:{\"type\":\"Established\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}},"k:{\"type\":\"NamesAccepted\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}},"subresource":"status"},{"manager":"kubectl-create","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:spec":{"f:conversion":{".":{},"f:strategy":{}},"f:group":{},"f:names":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:scope":{},"f:versions":{}}}}]},"spec":{"group":"crd.projectcalico.org","version":"v1","names":{"plural":"globalnetworkpolicies","singular":"globalnetworkpolicy","kind":"GlobalNetworkPolicy","listKind":"GlobalNetworkPolicyList"},"scope":"Cluster","validation":{"openAPIV3Schema":{"type":"object","properties":{"apiVersion":{"description":"APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources","type":"string"},"kind":{"description":"Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds","type":"string"},"metadata":{"type":"object"},"spec":{"type":"object","properties":{"applyOnForward":{"description":"ApplyOnForward indicates to apply the rules in this policy on forward traffic.","type":"boolean"},"doNotTrack":{"description":"DoNotTrack indicates whether packets matched by the rules in this policy should go through the data plane's connection tracking, such as Linux conntrack.  If True, the rules in this policy are applied before any data plane connection tracking, and packets allowed by this policy are marked as not to be tracked.","type":"boolean"},"egress":{"description":"The ordered set of egress rules.  Each rule contains a set of packet match criteria and a corresponding action to apply.","type":"array","items":{"description":"A Rule encapsulates a set of match criteria and an action.  Both selector-based security Policy and security Profiles reference rules - separated out as a list of rules for both ingress and egress packet matching. \n Each positive match criteria has a negated version, prefixed with \"Not\". All the match criteria within a rule must be satisfied for a packet to match. A single rule can contain the positive and negative version of a match and both must be satisfied for the rule to match.","type":"object","required":["action"],"properties":{"action":{"type":"string"},"destination":{"description":"Destination contains the match criteria that apply to destination entity.","type":"object","properties":{"namespaceSelector":{"description":"NamespaceSelector is an optional field that contains a selector expression. Only traffic that originates from (or terminates at) endpoints within the selected namespaces will be matched. When both NamespaceSelector and another selector are defined on the same rule, then only workload endpoints that are matched by both selectors will be selected by the rule. \n For NetworkPolicy, an empty NamespaceSelector implies that the Selector is limited to selecting only workload endpoints in the same namespace as the NetworkPolicy. \n For NetworkPolicy, `global()` NamespaceSelector implies that the Selector is limited to selecting only GlobalNetworkSet or HostEndpoint. \n For GlobalNetworkPolicy, an empty NamespaceSelector implies the Selector applies to workload endpoints across all namespaces.","type":"string"},"nets":{"description":"Nets is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) IP addresses in any of the given subnets.","type":"array","items":{"type":"string"}},"notNets":{"description":"NotNets is the negated version of the Nets field.","type":"array","items":{"type":"string"}},"notPorts":{"description":"NotPorts is the negated version of the Ports field. Since only some protocols have ports, if any ports are specified it requires the Protocol match in the Rule to be set to \"TCP\" or \"UDP\".","type":"array","items":{"pattern":"^.*","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"notSelector":{"description":"NotSelector is the negated version of the Selector field.  See Selector field for subtleties with negated selectors.","type":"string"},"ports":{"description":"Ports is an optional field that restricts the rule to only apply to traffic that has a source (destination) port that matches one of these ranges/values. This value is a list of integers or strings that represent ranges of ports. \n Since only some protocols have ports, if any ports are specified it requires the Protocol match in the Rule to be set to \"TCP\" or \"UDP\".","type":"array","items":{"pattern":"^.*","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"selector":{"description":"Selector is an optional field that contains a selector expression (see Policy for sample syntax).  Only traffic that originates from (terminates at) endpoints matching the selector will be matched. \n Note that: in addition to the negated version of the Selector (see NotSelector below), the selector expression syntax itself supports negation.  The two types of negation are subtly different. One negates the set of matched endpoints, the other negates the whole match: \n \tSelector = \"!has(my_label)\" matches packets that are from other Calico-controlled \tendpoints that do not have the label \"my_label\". \n \tNotSelector = \"has(my_label)\" matches packets that are not from Calico-controlled \tendpoints that do have the label \"my_label\". \n The effect is that the latter will accept packets from non-Calico sources whereas the former is limited to packets from Calico-controlled endpoints.","type":"string"},"serviceAccounts":{"description":"ServiceAccounts is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) a pod running as a matching service account.","type":"object","properties":{"names":{"description":"Names is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) a pod running as a service account whose name is in the list.","type":"array","items":{"type":"string"}},"selector":{"description":"Selector is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) a pod running as a service account that matches the given label selector. If both Names and Selector are specified then they are AND'ed.","type":"string"}}},"services":{"description":"Services is an optional field that contains options for matching Kubernetes Services. If specified, only traffic that originates from or terminates at endpoints within the selected service(s) will be matched, and only to/from each endpoint's port. \n Services cannot be specified on the same rule as Selector, NotSelector, NamespaceSelector, Nets, NotNets or ServiceAccounts. \n Ports and NotPorts can only be specified with Services on ingress rules.","type":"object","properties":{"name":{"description":"Name specifies the name of a Kubernetes Service to match.","type":"string"},"namespace":{"description":"Namespace specifies the namespace of the given Service. If left empty, the rule will match within this policy's namespace.","type":"string"}}}}},"http":{"description":"HTTP contains match criteria that apply to HTTP requests.","type":"object","properties":{"methods":{"description":"Methods is an optional field that restricts the rule to apply only to HTTP requests that use one of the listed HTTP Methods (e.g. GET, PUT, etc.) Multiple methods are OR'd together.","type":"array","items":{"type":"string"}},"paths":{"description":"Paths is an optional field that restricts the rule to apply to HTTP requests that use one of the listed HTTP Paths. Multiple paths are OR'd together. e.g: - exact: /foo - prefix: /bar NOTE: Each entry may ONLY specify either a `exact` or a `prefix` match. The validator will check for it.","type":"array","items":{"description":"HTTPPath specifies an HTTP path to match. It may be either of the form: exact: \u003cpath\u003e: which matches the path exactly or prefix: \u003cpath-prefix\u003e: which matches the path prefix","type":"object","properties":{"exact":{"type":"string"},"prefix":{"type":"string"}}}}}},"icmp":{"description":"ICMP is an optional field that restricts the rule to apply to a specific type and code of ICMP traffic.  This should only be specified if the Protocol field is set to \"ICMP\" or \"ICMPv6\".","type":"object","properties":{"code":{"description":"Match on a specific ICMP code.  If specified, the Type value must also be specified. This is a technical limitation imposed by the kernel's iptables firewall, which Calico uses to enforce the rule.","type":"integer"},"type":{"description":"Match on a specific ICMP type.  For example a value of 8 refers to ICMP Echo Request (i.e. pings).","type":"integer"}}},"ipVersion":{"description":"IPVersion is an optional field that restricts the rule to only match a specific IP version.","type":"integer"},"metadata":{"description":"Metadata contains additional information for this rule","type":"object","properties":{"annotations":{"description":"Annotations is a set of key value pairs that give extra information about the rule","type":"object","additionalProperties":{"type":"string"}}}},"notICMP":{"description":"NotICMP is the negated version of the ICMP field.","type":"object","properties":{"code":{"description":"Match on a specific ICMP code.  If specified, the Type value must also be specified. This is a technical limitation imposed by the kernel's iptables firewall, which Calico uses to enforce the rule.","type":"integer"},"type":{"description":"Match on a specific ICMP type.  For example a value of 8 refers to ICMP Echo Request (i.e. pings).","type":"integer"}}},"notProtocol":{"description":"NotProtocol is the negated version of the Protocol field.","pattern":"^.*","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true},"protocol":{"description":"Protocol is an optional field that restricts the rule to only apply to traffic of a specific IP protocol. Required if any of the EntityRules contain Ports (because ports only apply to certain protocols). \n Must be one of these string values: \"TCP\", \"UDP\", \"ICMP\", \"ICMPv6\", \"SCTP\", \"UDPLite\" or an integer in the range 1-255.","pattern":"^.*","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true},"source":{"description":"Source contains the match criteria that apply to source entity.","type":"object","properties":{"namespaceSelector":{"description":"NamespaceSelector is an optional field that contains a selector expression. Only traffic that originates from (or terminates at) endpoints within the selected namespaces will be matched. When both NamespaceSelector and another selector are defined on the same rule, then only workload endpoints that are matched by both selectors will be selected by the rule. \n For NetworkPolicy, an empty NamespaceSelector implies that the Selector is limited to selecting only workload endpoints in the same namespace as the NetworkPolicy. \n For NetworkPolicy, `global()` NamespaceSelector implies that the Selector is limited to selecting only GlobalNetworkSet or HostEndpoint. \n For GlobalNetworkPolicy, an empty NamespaceSelector implies the Selector applies to workload endpoints across all namespaces.","type":"string"},"nets":{"description":"Nets is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) IP addresses in any of the given subnets.","type":"array","items":{"type":"string"}},"notNets":{"description":"NotNets is the negated version of the Nets field.","type":"array","items":{"type":"string"}},"notPorts":{"description":"NotPorts is the negated version of the Ports field. Since only some protocols have ports, if any ports are specified it requires the Protocol match in the Rule to be set to \"TCP\" or \"UDP\".","type":"array","items":{"pattern":"^.*","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"notSelector":{"description":"NotSelector is the negated version of the Selector field.  See Selector field for subtleties with negated selectors.","type":"string"},"ports":{"description":"Ports is an optional field that restricts the rule to only apply to traffic that has a source (destination) port that matches one of these ranges/values. This value is a list of integers or strings that represent ranges of ports. \n Since only some protocols have ports, if any ports are specified it requires the Protocol match in the Rule to be set to \"TCP\" or \"UDP\".","type":"array","items":{"pattern":"^.*","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"selector":{"description":"Selector is an optional field that contains a selector expression (see Policy for sample syntax).  Only traffic that originates from (terminates at) endpoints matching the selector will be matched. \n Note that: in addition to the negated version of the Selector (see NotSelector below), the selector expression syntax itself supports negation.  The two types of negation are subtly different. One negates the set of matched endpoints, the other negates the whole match: \n \tSelector = \"!has(my_label)\" matches packets that are from other Calico-controlled \tendpoints that do not have the label \"my_label\". \n \tNotSelector = \"has(my_label)\" matches packets that are not from Calico-controlled \tendpoints that do have the label \"my_label\". \n The effect is that the latter will accept packets from non-Calico sources whereas the former is limited to packets from Calico-controlled endpoints.","type":"string"},"serviceAccounts":{"description":"ServiceAccounts is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) a pod running as a matching service account.","type":"object","properties":{"names":{"description":"Names is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) a pod running as a service account whose name is in the list.","type":"array","items":{"type":"string"}},"selector":{"description":"Selector is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) a pod running as a service account that matches the given label selector. If both Names and Selector are specified then they are AND'ed.","type":"string"}}},"services":{"description":"Services is an optional field that contains options for matching Kubernetes Services. If specified, only traffic that originates from or terminates at endpoints within the selected service(s) will be matched, and only to/from each endpoint's port. \n Services cannot be specified on the same rule as Selector, NotSelector, NamespaceSelector, Nets, NotNets or ServiceAccounts. \n Ports and NotPorts can only be specified with Services on ingress rules.","type":"object","properties":{"name":{"description":"Name specifies the name of a Kubernetes Service to match.","type":"string"},"namespace":{"description":"Namespace specifies the namespace of the given Service. If left empty, the rule will match within this policy's namespace.","type":"string"}}}}}}}},"ingress":{"description":"The ordered set of ingress rules.  Each rule contains a set of packet match criteria and a corresponding action to apply.","type":"array","items":{"description":"A Rule encapsulates a set of match criteria and an action.  Both selector-based security Policy and security Profiles reference rules - separated out as a list of rules for both ingress and egress packet matching. \n Each positive match criteria has a negated version, prefixed with \"Not\". All the match criteria within a rule must be satisfied for a packet to match. A single rule can contain the positive and negative version of a match and both must be satisfied for the rule to match.","type":"object","required":["action"],"properties":{"action":{"type":"string"},"destination":{"description":"Destination contains the match criteria that apply to destination entity.","type":"object","properties":{"namespaceSelector":{"description":"NamespaceSelector is an optional field that contains a selector expression. Only traffic that originates from (or terminates at) endpoints within the selected namespaces will be matched. When both NamespaceSelector and another selector are defined on the same rule, then only workload endpoints that are matched by both selectors will be selected by the rule. \n For NetworkPolicy, an empty NamespaceSelector implies that the Selector is limited to selecting only workload endpoints in the same namespace as the NetworkPolicy. \n For NetworkPolicy, `global()` NamespaceSelector implies that the Selector is limited to selecting only GlobalNetworkSet or HostEndpoint. \n For GlobalNetworkPolicy, an empty NamespaceSelector implies the Selector applies to workload endpoints across all namespaces.","type":"string"},"nets":{"description":"Nets is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) IP addresses in any of the given subnets.","type":"array","items":{"type":"string"}},"notNets":{"description":"NotNets is the negated version of the Nets field.","type":"array","items":{"type":"string"}},"notPorts":{"description":"NotPorts is the negated version of the Ports field. Since only some protocols have ports, if any ports are specified it requires the Protocol match in the Rule to be set to \"TCP\" or \"UDP\".","type":"array","items":{"pattern":"^.*","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"notSelector":{"description":"NotSelector is the negated version of the Selector field.  See Selector field for subtleties with negated selectors.","type":"string"},"ports":{"description":"Ports is an optional field that restricts the rule to only apply to traffic that has a source (destination) port that matches one of these ranges/values. This value is a list of integers or strings that represent ranges of ports. \n Since only some protocols have ports, if any ports are specified it requires the Protocol match in the Rule to be set to \"TCP\" or \"UDP\".","type":"array","items":{"pattern":"^.*","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"selector":{"description":"Selector is an optional field that contains a selector expression (see Policy for sample syntax).  Only traffic that originates from (terminates at) endpoints matching the selector will be matched. \n Note that: in addition to the negated version of the Selector (see NotSelector below), the selector expression syntax itself supports negation.  The two types of negation are subtly different. One negates the set of matched endpoints, the other negates the whole match: \n \tSelector = \"!has(my_label)\" matches packets that are from other Calico-controlled \tendpoints that do not have the label \"my_label\". \n \tNotSelector = \"has(my_label)\" matches packets that are not from Calico-controlled \tendpoints that do have the label \"my_label\". \n The effect is that the latter will accept packets from non-Calico sources whereas the former is limited to packets from Calico-controlled endpoints.","type":"string"},"serviceAccounts":{"description":"ServiceAccounts is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) a pod running as a matching service account.","type":"object","properties":{"names":{"description":"Names is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) a pod running as a service account whose name is in the list.","type":"array","items":{"type":"string"}},"selector":{"description":"Selector is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) a pod running as a service account that matches the given label selector. If both Names and Selector are specified then they are AND'ed.","type":"string"}}},"services":{"description":"Services is an optional field that contains options for matching Kubernetes Services. If specified, only traffic that originates from or terminates at endpoints within the selected service(s) will be matched, and only to/from each endpoint's port. \n Services cannot be specified on the same rule as Selector, NotSelector, NamespaceSelector, Nets, NotNets or ServiceAccounts. \n Ports and NotPorts can only be specified with Services on ingress rules.","type":"object","properties":{"name":{"description":"Name specifies the name of a Kubernetes Service to match.","type":"string"},"namespace":{"description":"Namespace specifies the namespace of the given Service. If left empty, the rule will match within this policy's namespace.","type":"string"}}}}},"http":{"description":"HTTP contains match criteria that apply to HTTP requests.","type":"object","properties":{"methods":{"description":"Methods is an optional field that restricts the rule to apply only to HTTP requests that use one of the listed HTTP Methods (e.g. GET, PUT, etc.) Multiple methods are OR'd together.","type":"array","items":{"type":"string"}},"paths":{"description":"Paths is an optional field that restricts the rule to apply to HTTP requests that use one of the listed HTTP Paths. Multiple paths are OR'd together. e.g: - exact: /foo - prefix: /bar NOTE: Each entry may ONLY specify either a `exact` or a `prefix` match. The validator will check for it.","type":"array","items":{"description":"HTTPPath specifies an HTTP path to match. It may be either of the form: exact: \u003cpath\u003e: which matches the path exactly or prefix: \u003cpath-prefix\u003e: which matches the path prefix","type":"object","properties":{"exact":{"type":"string"},"prefix":{"type":"string"}}}}}},"icmp":{"description":"ICMP is an optional field that restricts the rule to apply to a specific type and code of ICMP traffic.  This should only be specified if the Protocol field is set to \"ICMP\" or \"ICMPv6\".","type":"object","properties":{"code":{"description":"Match on a specific ICMP code.  If specified, the Type value must also be specified. This is a technical limitation imposed by the kernel's iptables firewall, which Calico uses to enforce the rule.","type":"integer"},"type":{"description":"Match on a specific ICMP type.  For example a value of 8 refers to ICMP Echo Request (i.e. pings).","type":"integer"}}},"ipVersion":{"description":"IPVersion is an optional field that restricts the rule to only match a specific IP version.","type":"integer"},"metadata":{"description":"Metadata contains additional information for this rule","type":"object","properties":{"annotations":{"description":"Annotations is a set of key value pairs that give extra information about the rule","type":"object","additionalProperties":{"type":"string"}}}},"notICMP":{"description":"NotICMP is the negated version of the ICMP field.","type":"object","properties":{"code":{"description":"Match on a specific ICMP code.  If specified, the Type value must also be specified. This is a technical limitation imposed by the kernel's iptables firewall, which Calico uses to enforce the rule.","type":"integer"},"type":{"description":"Match on a specific ICMP type.  For example a value of 8 refers to ICMP Echo Request (i.e. pings).","type":"integer"}}},"notProtocol":{"description":"NotProtocol is the negated version of the Protocol field.","pattern":"^.*","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true},"protocol":{"description":"Protocol is an optional field that restricts the rule to only apply to traffic of a specific IP protocol. Required if any of the EntityRules contain Ports (because ports only apply to certain protocols). \n Must be one of these string values: \"TCP\", \"UDP\", \"ICMP\", \"ICMPv6\", \"SCTP\", \"UDPLite\" or an integer in the range 1-255.","pattern":"^.*","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true},"source":{"description":"Source contains the match criteria that apply to source entity.","type":"object","properties":{"namespaceSelector":{"description":"NamespaceSelector is an optional field that contains a selector expression. Only traffic that originates from (or terminates at) endpoints within the selected namespaces will be matched. When both NamespaceSelector and another selector are defined on the same rule, then only workload endpoints that are matched by both selectors will be selected by the rule. \n For NetworkPolicy, an empty NamespaceSelector implies that the Selector is limited to selecting only workload endpoints in the same namespace as the NetworkPolicy. \n For NetworkPolicy, `global()` NamespaceSelector implies that the Selector is limited to selecting only GlobalNetworkSet or HostEndpoint. \n For GlobalNetworkPolicy, an empty NamespaceSelector implies the Selector applies to workload endpoints across all namespaces.","type":"string"},"nets":{"description":"Nets is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) IP addresses in any of the given subnets.","type":"array","items":{"type":"string"}},"notNets":{"description":"NotNets is the negated version of the Nets field.","type":"array","items":{"type":"string"}},"notPorts":{"description":"NotPorts is the negated version of the Ports field. Since only some protocols have ports, if any ports are specified it requires the Protocol match in the Rule to be set to \"TCP\" or \"UDP\".","type":"array","items":{"pattern":"^.*","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"notSelector":{"description":"NotSelector is the negated version of the Selector field.  See Selector field for subtleties with negated selectors.","type":"string"},"ports":{"description":"Ports is an optional field that restricts the rule to only apply to traffic that has a source (destination) port that matches one of these ranges/values. This value is a list of integers or strings that represent ranges of ports. \n Since only some protocols have ports, if any ports are specified it requires the Protocol match in the Rule to be set to \"TCP\" or \"UDP\".","type":"array","items":{"pattern":"^.*","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"selector":{"description":"Selector is an optional field that contains a selector expression (see Policy for sample syntax).  Only traffic that originates from (terminates at) endpoints matching the selector will be matched. \n Note that: in addition to the negated version of the Selector (see NotSelector below), the selector expression syntax itself supports negation.  The two types of negation are subtly different. One negates the set of matched endpoints, the other negates the whole match: \n \tSelector = \"!has(my_label)\" matches packets that are from other Calico-controlled \tendpoints that do not have the label \"my_label\". \n \tNotSelector = \"has(my_label)\" matches packets that are not from Calico-controlled \tendpoints that do have the label \"my_label\". \n The effect is that the latter will accept packets from non-Calico sources whereas the former is limited to packets from Calico-controlled endpoints.","type":"string"},"serviceAccounts":{"description":"ServiceAccounts is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) a pod running as a matching service account.","type":"object","properties":{"names":{"description":"Names is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) a pod running as a service account whose name is in the list.","type":"array","items":{"type":"string"}},"selector":{"description":"Selector is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) a pod running as a service account that matches the given label selector. If both Names and Selector are specified then they are AND'ed.","type":"string"}}},"services":{"description":"Services is an optional field that contains options for matching Kubernetes Services. If specified, only traffic that originates from or terminates at endpoints within the selected service(s) will be matched, and only to/from each endpoint's port. \n Services cannot be specified on the same rule as Selector, NotSelector, NamespaceSelector, Nets, NotNets or ServiceAccounts. \n Ports and NotPorts can only be specified with Services on ingress rules.","type":"object","properties":{"name":{"description":"Name specifies the name of a Kubernetes Service to match.","type":"string"},"namespace":{"description":"Namespace specifies the namespace of the given Service. If left empty, the rule will match within this policy's namespace.","type":"string"}}}}}}}},"namespaceSelector":{"description":"NamespaceSelector is an optional field for an expression used to select a pod based on namespaces.","type":"string"},"order":{"description":"Order is an optional field that specifies the order in which the policy is applied. Policies with higher \"order\" are applied after those with lower order.  If the order is omitted, it may be considered to be \"infinite\" - i.e. the policy will be applied last.  Policies with identical order will be applied in alphanumerical order based on the Policy \"Name\".","type":"number"},"preDNAT":{"description":"PreDNAT indicates to apply the rules in this policy before any DNAT.","type":"boolean"},"selector":{"description":"The selector is an expression used to pick pick out the endpoints that the policy should be applied to. \n Selector expressions follow this syntax: \n \tlabel == \"string_literal\"  -\u003e  comparison, e.g. my_label == \"foo bar\" \tlabel != \"string_literal\"   -\u003e  not equal; also matches if label is not present \tlabel in { \"a\", \"b\", \"c\", ... }  -\u003e  true if the value of label X is one of \"a\", \"b\", \"c\" \tlabel not in { \"a\", \"b\", \"c\", ... }  -\u003e  true if the value of label X is not one of \"a\", \"b\", \"c\" \thas(label_name)  -\u003e True if that label is present \t! expr -\u003e negation of expr \texpr \u0026\u0026 expr  -\u003e Short-circuit and \texpr || expr  -\u003e Short-circuit or \t( expr ) -\u003e parens for grouping \tall() or the empty selector -\u003e matches all endpoints. \n Label names are allowed to contain alphanumerics, -, _ and /. String literals are more permissive but they do not support escape characters. \n Examples (with made-up labels): \n \ttype == \"webserver\" \u0026\u0026 deployment == \"prod\" \ttype in {\"frontend\", \"backend\"} \tdeployment != \"dev\" \t! has(label_name)","type":"string"},"serviceAccountSelector":{"description":"ServiceAccountSelector is an optional field for an expression used to select a pod based on service accounts.","type":"string"},"types":{"description":"Types indicates whether this policy applies to ingress, or to egress, or to both.  When not explicitly specified (and so the value on creation is empty or nil), Calico defaults Types according to what Ingress and Egress rules are present in the policy.  The default is: \n - [ PolicyTypeIngress ], if there are no Egress rules (including the case where there are   also no Ingress rules) \n - [ PolicyTypeEgress ], if there are Egress rules but no Ingress rules \n - [ PolicyTypeIngress, PolicyTypeEgress ], if there are both Ingress and Egress rules. \n When the policy is read back again, Types will always be one of these values, never empty or nil.","type":"array","items":{"description":"PolicyType enumerates the possible values of the PolicySpec Types field.","type":"string"}}}}}}},"versions":[{"name":"v1","served":true,"storage":true}],"conversion":{"strategy":"None"},"preserveUnknownFields":false},"status":{"conditions":[{"type":"NamesAccepted","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"NoConflicts","message":"no conflicts found"},{"type":"Established","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"InitialNamesAccepted","message":"the initial names have been accepted"}],"acceptedNames":{"plural":"globalnetworkpolicies","singular":"globalnetworkpolicy","kind":"GlobalNetworkPolicy","listKind":"GlobalNetworkPolicyList"},"storedVersions":["v1"]}}

/registry/apiextensions.k8s.io/customresourcedefinitions/globalnetworksets.crd.projectcalico.org
{"kind":"CustomResourceDefinition","apiVersion":"apiextensions.k8s.io/v1beta1","metadata":{"name":"globalnetworksets.crd.projectcalico.org","uid":"4d659fd9-33b2-49ba-8ab6-163f6d681a68","generation":1,"creationTimestamp":"2023-11-22T16:51:52Z","managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:status":{"f:acceptedNames":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:conditions":{"k:{\"type\":\"Established\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}},"k:{\"type\":\"NamesAccepted\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}},"subresource":"status"},{"manager":"kubectl-create","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:spec":{"f:conversion":{".":{},"f:strategy":{}},"f:group":{},"f:names":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:scope":{},"f:versions":{}}}}]},"spec":{"group":"crd.projectcalico.org","version":"v1","names":{"plural":"globalnetworksets","singular":"globalnetworkset","kind":"GlobalNetworkSet","listKind":"GlobalNetworkSetList"},"scope":"Cluster","validation":{"openAPIV3Schema":{"description":"GlobalNetworkSet contains a set of arbitrary IP sub-networks/CIDRs that share labels to allow rules to refer to them via selectors.  The labels of GlobalNetworkSet are not namespaced.","type":"object","properties":{"apiVersion":{"description":"APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources","type":"string"},"kind":{"description":"Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds","type":"string"},"metadata":{"type":"object"},"spec":{"description":"GlobalNetworkSetSpec contains the specification for a NetworkSet resource.","type":"object","properties":{"nets":{"description":"The list of IP networks that belong to this set.","type":"array","items":{"type":"string"}}}}}}},"versions":[{"name":"v1","served":true,"storage":true}],"conversion":{"strategy":"None"},"preserveUnknownFields":false},"status":{"conditions":[{"type":"NamesAccepted","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"NoConflicts","message":"no conflicts found"},{"type":"Established","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"InitialNamesAccepted","message":"the initial names have been accepted"}],"acceptedNames":{"plural":"globalnetworksets","singular":"globalnetworkset","kind":"GlobalNetworkSet","listKind":"GlobalNetworkSetList"},"storedVersions":["v1"]}}

/registry/apiextensions.k8s.io/customresourcedefinitions/hostendpoints.crd.projectcalico.org
{"kind":"CustomResourceDefinition","apiVersion":"apiextensions.k8s.io/v1beta1","metadata":{"name":"hostendpoints.crd.projectcalico.org","uid":"c96654da-d89b-472a-b56b-f850c9e2c334","generation":1,"creationTimestamp":"2023-11-22T16:51:52Z","managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:status":{"f:acceptedNames":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:conditions":{"k:{\"type\":\"Established\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}},"k:{\"type\":\"NamesAccepted\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}},"subresource":"status"},{"manager":"kubectl-create","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:spec":{"f:conversion":{".":{},"f:strategy":{}},"f:group":{},"f:names":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:scope":{},"f:versions":{}}}}]},"spec":{"group":"crd.projectcalico.org","version":"v1","names":{"plural":"hostendpoints","singular":"hostendpoint","kind":"HostEndpoint","listKind":"HostEndpointList"},"scope":"Cluster","validation":{"openAPIV3Schema":{"type":"object","properties":{"apiVersion":{"description":"APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources","type":"string"},"kind":{"description":"Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds","type":"string"},"metadata":{"type":"object"},"spec":{"description":"HostEndpointSpec contains the specification for a HostEndpoint resource.","type":"object","properties":{"expectedIPs":{"description":"The expected IP addresses (IPv4 and IPv6) of the endpoint. If \"InterfaceName\" is not present, Calico will look for an interface matching any of the IPs in the list and apply policy to that. Note: \tWhen using the selector match criteria in an ingress or egress security Policy \tor Profile, Calico converts the selector into a set of IP addresses. For host \tendpoints, the ExpectedIPs field is used for that purpose. (If only the interface \tname is specified, Calico does not learn the IPs of the interface for use in match \tcriteria.)","type":"array","items":{"type":"string"}},"interfaceName":{"description":"Either \"*\", or the name of a specific Linux interface to apply policy to; or empty.  \"*\" indicates that this HostEndpoint governs all traffic to, from or through the default network namespace of the host named by the \"Node\" field; entering and leaving that namespace via any interface, including those from/to non-host-networked local workloads. \n If InterfaceName is not \"*\", this HostEndpoint only governs traffic that enters or leaves the host through the specific interface named by InterfaceName, or - when InterfaceName is empty - through the specific interface that has one of the IPs in ExpectedIPs. Therefore, when InterfaceName is empty, at least one expected IP must be specified.  Only external interfaces (such as \"eth0\") are supported here; it isn't possible for a HostEndpoint to protect traffic through a specific local workload interface. \n Note: Only some kinds of policy are implemented for \"*\" HostEndpoints; initially just pre-DNAT policy.  Please check Calico documentation for the latest position.","type":"string"},"node":{"description":"The node name identifying the Calico node instance.","type":"string"},"ports":{"description":"Ports contains the endpoint's named ports, which may be referenced in security policy rules.","type":"array","items":{"type":"object","required":["name","port","protocol"],"properties":{"name":{"type":"string"},"port":{"type":"integer"},"protocol":{"pattern":"^.*","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}}}},"profiles":{"description":"A list of identifiers of security Profile objects that apply to this endpoint. Each profile is applied in the order that they appear in this list.  Profile rules are applied after the selector-based security policy.","type":"array","items":{"type":"string"}}}}}}},"versions":[{"name":"v1","served":true,"storage":true}],"conversion":{"strategy":"None"},"preserveUnknownFields":false},"status":{"conditions":[{"type":"NamesAccepted","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"NoConflicts","message":"no conflicts found"},{"type":"Established","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"InitialNamesAccepted","message":"the initial names have been accepted"}],"acceptedNames":{"plural":"hostendpoints","singular":"hostendpoint","kind":"HostEndpoint","listKind":"HostEndpointList"},"storedVersions":["v1"]}}

/registry/apiextensions.k8s.io/customresourcedefinitions/imagesets.operator.tigera.io
{"kind":"CustomResourceDefinition","apiVersion":"apiextensions.k8s.io/v1beta1","metadata":{"name":"imagesets.operator.tigera.io","uid":"24a8f4e4-a08d-4766-a715-eab57508f5e0","generation":1,"creationTimestamp":"2023-11-22T16:51:52Z","annotations":{"controller-gen.kubebuilder.io/version":"v0.3.0"},"managedFields":[{"manager":"kubectl-create","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:annotations":{".":{},"f:controller-gen.kubebuilder.io/version":{}}},"f:spec":{"f:conversion":{".":{},"f:strategy":{}},"f:group":{},"f:names":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:scope":{},"f:versions":{}}}},{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:53Z","fieldsType":"FieldsV1","fieldsV1":{"f:status":{"f:acceptedNames":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:conditions":{"k:{\"type\":\"Established\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}},"k:{\"type\":\"NamesAccepted\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}},"subresource":"status"}]},"spec":{"group":"operator.tigera.io","version":"v1","names":{"plural":"imagesets","singular":"imageset","kind":"ImageSet","listKind":"ImageSetList"},"scope":"Cluster","validation":{"openAPIV3Schema":{"description":"ImageSet is used to specify image digests for the images that the operator deploys. The name of the ImageSet is expected to be in the format `\u003cvariant\u003e-\u003crelease\u003e`. The `variant` used is `enterprise` if the InstallationSpec Variant is `TigeraSecureEnterprise` otherwise it is `calico`. The `release` must match the version of the variant that the operator is built to deploy, this version can be obtained by passing the `--version` flag to the operator binary.","type":"object","properties":{"apiVersion":{"description":"APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources","type":"string"},"kind":{"description":"Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds","type":"string"},"metadata":{"type":"object"},"spec":{"description":"ImageSetSpec defines the desired state of ImageSet.","type":"object","properties":{"images":{"description":"Images is the list of images to use digests. All images that the operator will deploy must be specified.","type":"array","items":{"type":"object","required":["digest","image"],"properties":{"digest":{"description":"Digest is the image identifier that will be used for the Image. The field should not include a leading `@` and must be prefixed with `sha256:`.","type":"string"},"image":{"description":"Image is an image that the operator deploys and instead of using the built in tag the operator will use the Digest for the image identifier. The value should be the image name without registry or tag or digest. For the image `docker.io/calico/node:v3.17.1` it should be represented as `calico/node`","type":"string"}}}}}}}}},"subresources":{"status":{}},"versions":[{"name":"v1","served":true,"storage":true}],"conversion":{"strategy":"None"},"preserveUnknownFields":false},"status":{"conditions":[{"type":"NamesAccepted","status":"True","lastTransitionTime":"2023-11-22T16:51:53Z","reason":"NoConflicts","message":"no conflicts found"},{"type":"Established","status":"True","lastTransitionTime":"2023-11-22T16:51:53Z","reason":"InitialNamesAccepted","message":"the initial names have been accepted"}],"acceptedNames":{"plural":"imagesets","singular":"imageset","kind":"ImageSet","listKind":"ImageSetList"},"storedVersions":["v1"]}}

/registry/apiextensions.k8s.io/customresourcedefinitions/installations.operator.tigera.io
{"kind":"CustomResourceDefinition","apiVersion":"apiextensions.k8s.io/v1beta1","metadata":{"name":"installations.operator.tigera.io","uid":"1fa13a05-9203-420e-bab7-8d77666cbb41","generation":1,"creationTimestamp":"2023-11-22T16:51:53Z","annotations":{"controller-gen.kubebuilder.io/version":"v0.11.3"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:53Z","fieldsType":"FieldsV1","fieldsV1":{"f:status":{"f:acceptedNames":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:conditions":{"k:{\"type\":\"Established\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}},"k:{\"type\":\"NamesAccepted\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}},"subresource":"status"},{"manager":"kubectl-create","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:53Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:annotations":{".":{},"f:controller-gen.kubebuilder.io/version":{}}},"f:spec":{"f:conversion":{".":{},"f:strategy":{}},"f:group":{},"f:names":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:scope":{},"f:versions":{}}}}]},"spec":{"group":"operator.tigera.io","version":"v1","names":{"plural":"installations","singular":"installation","kind":"Installation","listKind":"InstallationList"},"scope":"Cluster","validation":{"openAPIV3Schema":{"description":"Installation configures an installation of Calico or Calico Enterprise. At most one instance of this resource is supported. It must be named \"default\". The Installation API installs core networking and network policy components, and provides general install-time configuration.","type":"object","properties":{"apiVersion":{"description":"APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources","type":"string"},"kind":{"description":"Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds","type":"string"},"metadata":{"type":"object"},"spec":{"description":"Specification of the desired state for the Calico or Calico Enterprise installation.","type":"object","properties":{"calicoKubeControllersDeployment":{"description":"CalicoKubeControllersDeployment configures the calico-kube-controllers Deployment. If used in conjunction with the deprecated ComponentResources, then these overrides take precedence.","type":"object","properties":{"metadata":{"description":"Metadata is a subset of a Kubernetes object's metadata that is added to the Deployment.","type":"object","properties":{"annotations":{"description":"Annotations is a map of arbitrary non-identifying metadata. Each of these key/value pairs are added to the object's annotations provided the key does not already exist in the object's annotations.","type":"object","additionalProperties":{"type":"string"}},"labels":{"description":"Labels is a map of string keys and values that may match replicaset and service selectors. Each of these key/value pairs are added to the object's labels provided the key does not already exist in the object's labels.","type":"object","additionalProperties":{"type":"string"}}}},"spec":{"description":"Spec is the specification of the calico-kube-controllers Deployment.","type":"object","properties":{"minReadySeconds":{"description":"MinReadySeconds is the minimum number of seconds for which a newly created Deployment pod should be ready without any of its container crashing, for it to be considered available. If specified, this overrides any minReadySeconds value that may be set on the calico-kube-controllers Deployment. If omitted, the calico-kube-controllers Deployment will use its default value for minReadySeconds.","type":"integer","format":"int32","maximum":2147483647,"minimum":0},"template":{"description":"Template describes the calico-kube-controllers Deployment pod that will be created.","type":"object","properties":{"metadata":{"description":"Metadata is a subset of a Kubernetes object's metadata that is added to the pod's metadata.","type":"object","properties":{"annotations":{"description":"Annotations is a map of arbitrary non-identifying metadata. Each of these key/value pairs are added to the object's annotations provided the key does not already exist in the object's annotations.","type":"object","additionalProperties":{"type":"string"}},"labels":{"description":"Labels is a map of string keys and values that may match replicaset and service selectors. Each of these key/value pairs are added to the object's labels provided the key does not already exist in the object's labels.","type":"object","additionalProperties":{"type":"string"}}}},"spec":{"description":"Spec is the calico-kube-controllers Deployment's PodSpec.","type":"object","properties":{"affinity":{"description":"Affinity is a group of affinity scheduling rules for the calico-kube-controllers pods. If specified, this overrides any affinity that may be set on the calico-kube-controllers Deployment. If omitted, the calico-kube-controllers Deployment will use its default value for affinity. WARNING: Please note that this field will override the default calico-kube-controllers Deployment affinity.","type":"object","properties":{"nodeAffinity":{"description":"Describes node affinity scheduling rules for the pod.","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"An empty preferred scheduling term matches all objects with implicit weight 0 (i.e. it's a no-op). A null preferred scheduling term matches no objects (i.e. is also a no-op).","type":"object","required":["preference","weight"],"properties":{"preference":{"description":"A node selector term, associated with the corresponding weight.","type":"object","properties":{"matchExpressions":{"description":"A list of node selector requirements by node's labels.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchFields":{"description":"A list of node selector requirements by node's fields.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}}},"x-kubernetes-map-type":"atomic"},"weight":{"description":"Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to an update), the system may or may not try to eventually evict the pod from its node.","type":"object","required":["nodeSelectorTerms"],"properties":{"nodeSelectorTerms":{"description":"Required. A list of node selector terms. The terms are ORed.","type":"array","items":{"description":"A null or empty node selector term matches no objects. The requirements of them are ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.","type":"object","properties":{"matchExpressions":{"description":"A list of node selector requirements by node's labels.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchFields":{"description":"A list of node selector requirements by node's fields.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}}},"x-kubernetes-map-type":"atomic"}}},"x-kubernetes-map-type":"atomic"}}},"podAffinity":{"description":"Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)","type":"object","required":["podAffinityTerm","weight"],"properties":{"podAffinityTerm":{"description":"Required. A pod affinity term, associated with the corresponding weight.","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}},"weight":{"description":"weight associated with matching the corresponding podAffinityTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.","type":"array","items":{"description":"Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key \u003ctopologyKey\u003e matches that of any node on which a pod of the set of pods is running","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}}}}},"podAntiAffinity":{"description":"Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling anti-affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)","type":"object","required":["podAffinityTerm","weight"],"properties":{"podAffinityTerm":{"description":"Required. A pod affinity term, associated with the corresponding weight.","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}},"weight":{"description":"weight associated with matching the corresponding podAffinityTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the anti-affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the anti-affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.","type":"array","items":{"description":"Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key \u003ctopologyKey\u003e matches that of any node on which a pod of the set of pods is running","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}}}}}}},"containers":{"description":"Containers is a list of calico-kube-controllers containers. If specified, this overrides the specified calico-kube-controllers Deployment containers. If omitted, the calico-kube-controllers Deployment will use its default values for its containers.","type":"array","items":{"description":"CalicoKubeControllersDeploymentContainer is a calico-kube-controllers Deployment container.","type":"object","required":["name"],"properties":{"name":{"description":"Name is an enum which identifies the calico-kube-controllers Deployment container by name.","type":"string","enum":["calico-kube-controllers"]},"resources":{"description":"Resources allows customization of limits and requests for compute resources such as cpu and memory. If specified, this overrides the named calico-kube-controllers Deployment container's resources. If omitted, the calico-kube-controllers Deployment will use its default value for this container's resources. If used in conjunction with the deprecated ComponentResources, then this value takes precedence.","type":"object","properties":{"limits":{"description":"Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"requests":{"description":"Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}}}}}}},"nodeSelector":{"description":"NodeSelector is the calico-kube-controllers pod's scheduling constraints. If specified, each of the key/value pairs are added to the calico-kube-controllers Deployment nodeSelector provided the key does not already exist in the object's nodeSelector. If used in conjunction with ControlPlaneNodeSelector, that nodeSelector is set on the calico-kube-controllers Deployment and each of this field's key/value pairs are added to the calico-kube-controllers Deployment nodeSelector provided the key does not already exist in the object's nodeSelector. If omitted, the calico-kube-controllers Deployment will use its default value for nodeSelector. WARNING: Please note that this field will modify the default calico-kube-controllers Deployment nodeSelector.","type":"object","additionalProperties":{"type":"string"}},"tolerations":{"description":"Tolerations is the calico-kube-controllers pod's tolerations. If specified, this overrides any tolerations that may be set on the calico-kube-controllers Deployment. If omitted, the calico-kube-controllers Deployment will use its default value for tolerations. WARNING: Please note that this field will override the default calico-kube-controllers Deployment tolerations.","type":"array","items":{"description":"The pod this Toleration is attached to tolerates any taint that matches the triple \u003ckey,value,effect\u003e using the matching operator \u003coperator\u003e.","type":"object","properties":{"effect":{"description":"Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute.","type":"string"},"key":{"description":"Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.","type":"string"},"operator":{"description":"Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category.","type":"string"},"tolerationSeconds":{"description":"TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system.","type":"integer","format":"int64"},"value":{"description":"Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string.","type":"string"}}}}}}}}}}}},"calicoNetwork":{"description":"CalicoNetwork specifies networking configuration options for Calico.","type":"object","properties":{"bgp":{"description":"BGP configures whether or not to enable Calico's BGP capabilities.","type":"string","enum":["Enabled","Disabled"]},"containerIPForwarding":{"description":"ContainerIPForwarding configures whether ip forwarding will be enabled for containers in the CNI configuration. Default: Disabled","type":"string","enum":["Enabled","Disabled"]},"hostPorts":{"description":"HostPorts configures whether or not Calico will support Kubernetes HostPorts. Valid only when using the Calico CNI plugin. Default: Enabled","type":"string","enum":["Enabled","Disabled"]},"ipPools":{"description":"IPPools contains a list of IP pools to create if none exist. At most one IP pool of each address family may be specified. If omitted, a single pool will be configured if needed.","type":"array","items":{"type":"object","required":["cidr"],"properties":{"blockSize":{"description":"BlockSize specifies the CIDR prefex length to use when allocating per-node IP blocks from the main IP pool CIDR. Default: 26 (IPv4), 122 (IPv6)","type":"integer","format":"int32"},"cidr":{"description":"CIDR contains the address range for the IP Pool in classless inter-domain routing format.","type":"string"},"disableBGPExport":{"description":"DisableBGPExport specifies whether routes from this IP pool's CIDR are exported over BGP. Default: false","type":"boolean","default":false},"encapsulation":{"description":"Encapsulation specifies the encapsulation type that will be used with the IP Pool. Default: IPIP","type":"string","enum":["IPIPCrossSubnet","IPIP","VXLAN","VXLANCrossSubnet","None"]},"natOutgoing":{"description":"NATOutgoing specifies if NAT will be enabled or disabled for outgoing traffic. Default: Enabled","type":"string","enum":["Enabled","Disabled"]},"nodeSelector":{"description":"NodeSelector specifies the node selector that will be set for the IP Pool. Default: 'all()'","type":"string"}}}},"linuxDataplane":{"description":"LinuxDataplane is used to select the dataplane used for Linux nodes. In particular, it causes the operator to add required mounts and environment variables for the particular dataplane. If not specified, iptables mode is used. Default: Iptables","type":"string","enum":["Iptables","BPF","VPP"]},"mtu":{"description":"MTU specifies the maximum transmission unit to use on the pod network. If not specified, Calico will perform MTU auto-detection based on the cluster network.","type":"integer","format":"int32"},"multiInterfaceMode":{"description":"MultiInterfaceMode configures what will configure multiple interface per pod. Only valid for Calico Enterprise installations using the Calico CNI plugin. Default: None","type":"string","enum":["None","Multus"]},"nodeAddressAutodetectionV4":{"description":"NodeAddressAutodetectionV4 specifies an approach to automatically detect node IPv4 addresses. If not specified, will use default auto-detection settings to acquire an IPv4 address for each node.","type":"object","properties":{"canReach":{"description":"CanReach enables IP auto-detection based on which source address on the node is used to reach the specified IP or domain.","type":"string"},"cidrs":{"description":"CIDRS enables IP auto-detection based on which addresses on the nodes are within one of the provided CIDRs.","type":"array","items":{"type":"string"}},"firstFound":{"description":"FirstFound uses default interface matching parameters to select an interface, performing best-effort filtering based on well-known interface names.","type":"boolean"},"interface":{"description":"Interface enables IP auto-detection based on interfaces that match the given regex.","type":"string"},"kubernetes":{"description":"Kubernetes configures Calico to detect node addresses based on the Kubernetes API.","type":"string","enum":["NodeInternalIP"]},"skipInterface":{"description":"SkipInterface enables IP auto-detection based on interfaces that do not match the given regex.","type":"string"}}},"nodeAddressAutodetectionV6":{"description":"NodeAddressAutodetectionV6 specifies an approach to automatically detect node IPv6 addresses. If not specified, IPv6 addresses will not be auto-detected.","type":"object","properties":{"canReach":{"description":"CanReach enables IP auto-detection based on which source address on the node is used to reach the specified IP or domain.","type":"string"},"cidrs":{"description":"CIDRS enables IP auto-detection based on which addresses on the nodes are within one of the provided CIDRs.","type":"array","items":{"type":"string"}},"firstFound":{"description":"FirstFound uses default interface matching parameters to select an interface, performing best-effort filtering based on well-known interface names.","type":"boolean"},"interface":{"description":"Interface enables IP auto-detection based on interfaces that match the given regex.","type":"string"},"kubernetes":{"description":"Kubernetes configures Calico to detect node addresses based on the Kubernetes API.","type":"string","enum":["NodeInternalIP"]},"skipInterface":{"description":"SkipInterface enables IP auto-detection based on interfaces that do not match the given regex.","type":"string"}}}}},"calicoNodeDaemonSet":{"description":"CalicoNodeDaemonSet configures the calico-node DaemonSet. If used in conjunction with the deprecated ComponentResources, then these overrides take precedence.","type":"object","properties":{"metadata":{"description":"Metadata is a subset of a Kubernetes object's metadata that is added to the DaemonSet.","type":"object","properties":{"annotations":{"description":"Annotations is a map of arbitrary non-identifying metadata. Each of these key/value pairs are added to the object's annotations provided the key does not already exist in the object's annotations.","type":"object","additionalProperties":{"type":"string"}},"labels":{"description":"Labels is a map of string keys and values that may match replicaset and service selectors. Each of these key/value pairs are added to the object's labels provided the key does not already exist in the object's labels.","type":"object","additionalProperties":{"type":"string"}}}},"spec":{"description":"Spec is the specification of the calico-node DaemonSet.","type":"object","properties":{"minReadySeconds":{"description":"MinReadySeconds is the minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. If specified, this overrides any minReadySeconds value that may be set on the calico-node DaemonSet. If omitted, the calico-node DaemonSet will use its default value for minReadySeconds.","type":"integer","format":"int32","maximum":2147483647,"minimum":0},"template":{"description":"Template describes the calico-node DaemonSet pod that will be created.","type":"object","properties":{"metadata":{"description":"Metadata is a subset of a Kubernetes object's metadata that is added to the pod's metadata.","type":"object","properties":{"annotations":{"description":"Annotations is a map of arbitrary non-identifying metadata. Each of these key/value pairs are added to the object's annotations provided the key does not already exist in the object's annotations.","type":"object","additionalProperties":{"type":"string"}},"labels":{"description":"Labels is a map of string keys and values that may match replicaset and service selectors. Each of these key/value pairs are added to the object's labels provided the key does not already exist in the object's labels.","type":"object","additionalProperties":{"type":"string"}}}},"spec":{"description":"Spec is the calico-node DaemonSet's PodSpec.","type":"object","properties":{"affinity":{"description":"Affinity is a group of affinity scheduling rules for the calico-node pods. If specified, this overrides any affinity that may be set on the calico-node DaemonSet. If omitted, the calico-node DaemonSet will use its default value for affinity. WARNING: Please note that this field will override the default calico-node DaemonSet affinity.","type":"object","properties":{"nodeAffinity":{"description":"Describes node affinity scheduling rules for the pod.","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"An empty preferred scheduling term matches all objects with implicit weight 0 (i.e. it's a no-op). A null preferred scheduling term matches no objects (i.e. is also a no-op).","type":"object","required":["preference","weight"],"properties":{"preference":{"description":"A node selector term, associated with the corresponding weight.","type":"object","properties":{"matchExpressions":{"description":"A list of node selector requirements by node's labels.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchFields":{"description":"A list of node selector requirements by node's fields.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}}},"x-kubernetes-map-type":"atomic"},"weight":{"description":"Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to an update), the system may or may not try to eventually evict the pod from its node.","type":"object","required":["nodeSelectorTerms"],"properties":{"nodeSelectorTerms":{"description":"Required. A list of node selector terms. The terms are ORed.","type":"array","items":{"description":"A null or empty node selector term matches no objects. The requirements of them are ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.","type":"object","properties":{"matchExpressions":{"description":"A list of node selector requirements by node's labels.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchFields":{"description":"A list of node selector requirements by node's fields.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}}},"x-kubernetes-map-type":"atomic"}}},"x-kubernetes-map-type":"atomic"}}},"podAffinity":{"description":"Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)","type":"object","required":["podAffinityTerm","weight"],"properties":{"podAffinityTerm":{"description":"Required. A pod affinity term, associated with the corresponding weight.","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}},"weight":{"description":"weight associated with matching the corresponding podAffinityTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.","type":"array","items":{"description":"Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key \u003ctopologyKey\u003e matches that of any node on which a pod of the set of pods is running","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}}}}},"podAntiAffinity":{"description":"Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling anti-affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)","type":"object","required":["podAffinityTerm","weight"],"properties":{"podAffinityTerm":{"description":"Required. A pod affinity term, associated with the corresponding weight.","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}},"weight":{"description":"weight associated with matching the corresponding podAffinityTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the anti-affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the anti-affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.","type":"array","items":{"description":"Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key \u003ctopologyKey\u003e matches that of any node on which a pod of the set of pods is running","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}}}}}}},"containers":{"description":"Containers is a list of calico-node containers. If specified, this overrides the specified calico-node DaemonSet containers. If omitted, the calico-node DaemonSet will use its default values for its containers.","type":"array","items":{"description":"CalicoNodeDaemonSetContainer is a calico-node DaemonSet container.","type":"object","required":["name"],"properties":{"name":{"description":"Name is an enum which identifies the calico-node DaemonSet container by name.","type":"string","enum":["calico-node"]},"resources":{"description":"Resources allows customization of limits and requests for compute resources such as cpu and memory. If specified, this overrides the named calico-node DaemonSet container's resources. If omitted, the calico-node DaemonSet will use its default value for this container's resources. If used in conjunction with the deprecated ComponentResources, then this value takes precedence.","type":"object","properties":{"limits":{"description":"Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"requests":{"description":"Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}}}}}}},"initContainers":{"description":"InitContainers is a list of calico-node init containers. If specified, this overrides the specified calico-node DaemonSet init containers. If omitted, the calico-node DaemonSet will use its default values for its init containers.","type":"array","items":{"description":"CalicoNodeDaemonSetInitContainer is a calico-node DaemonSet init container.","type":"object","required":["name"],"properties":{"name":{"description":"Name is an enum which identifies the calico-node DaemonSet init container by name.","type":"string","enum":["install-cni","hostpath-init","flexvol-driver","mount-bpffs","node-certs-key-cert-provisioner","calico-node-prometheus-server-tls-key-cert-provisioner"]},"resources":{"description":"Resources allows customization of limits and requests for compute resources such as cpu and memory. If specified, this overrides the named calico-node DaemonSet init container's resources. If omitted, the calico-node DaemonSet will use its default value for this container's resources. If used in conjunction with the deprecated ComponentResources, then this value takes precedence.","type":"object","properties":{"limits":{"description":"Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"requests":{"description":"Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}}}}}}},"nodeSelector":{"description":"NodeSelector is the calico-node pod's scheduling constraints. If specified, each of the key/value pairs are added to the calico-node DaemonSet nodeSelector provided the key does not already exist in the object's nodeSelector. If omitted, the calico-node DaemonSet will use its default value for nodeSelector. WARNING: Please note that this field will modify the default calico-node DaemonSet nodeSelector.","type":"object","additionalProperties":{"type":"string"}},"tolerations":{"description":"Tolerations is the calico-node pod's tolerations. If specified, this overrides any tolerations that may be set on the calico-node DaemonSet. If omitted, the calico-node DaemonSet will use its default value for tolerations. WARNING: Please note that this field will override the default calico-node DaemonSet tolerations.","type":"array","items":{"description":"The pod this Toleration is attached to tolerates any taint that matches the triple \u003ckey,value,effect\u003e using the matching operator \u003coperator\u003e.","type":"object","properties":{"effect":{"description":"Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute.","type":"string"},"key":{"description":"Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.","type":"string"},"operator":{"description":"Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category.","type":"string"},"tolerationSeconds":{"description":"TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system.","type":"integer","format":"int64"},"value":{"description":"Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string.","type":"string"}}}}}}}}}}}},"calicoWindowsUpgradeDaemonSet":{"description":"CalicoWindowsUpgradeDaemonSet configures the calico-windows-upgrade DaemonSet.","type":"object","properties":{"metadata":{"description":"Metadata is a subset of a Kubernetes object's metadata that is added to the Deployment.","type":"object","properties":{"annotations":{"description":"Annotations is a map of arbitrary non-identifying metadata. Each of these key/value pairs are added to the object's annotations provided the key does not already exist in the object's annotations.","type":"object","additionalProperties":{"type":"string"}},"labels":{"description":"Labels is a map of string keys and values that may match replicaset and service selectors. Each of these key/value pairs are added to the object's labels provided the key does not already exist in the object's labels.","type":"object","additionalProperties":{"type":"string"}}}},"spec":{"description":"Spec is the specification of the calico-windows-upgrade DaemonSet.","type":"object","properties":{"minReadySeconds":{"description":"MinReadySeconds is the minimum number of seconds for which a newly created Deployment pod should be ready without any of its container crashing, for it to be considered available. If specified, this overrides any minReadySeconds value that may be set on the calico-windows-upgrade DaemonSet. If omitted, the calico-windows-upgrade DaemonSet will use its default value for minReadySeconds.","type":"integer","format":"int32","maximum":2147483647,"minimum":0},"template":{"description":"Template describes the calico-windows-upgrade DaemonSet pod that will be created.","type":"object","properties":{"metadata":{"description":"Metadata is a subset of a Kubernetes object's metadata that is added to the pod's metadata.","type":"object","properties":{"annotations":{"description":"Annotations is a map of arbitrary non-identifying metadata. Each of these key/value pairs are added to the object's annotations provided the key does not already exist in the object's annotations.","type":"object","additionalProperties":{"type":"string"}},"labels":{"description":"Labels is a map of string keys and values that may match replicaset and service selectors. Each of these key/value pairs are added to the object's labels provided the key does not already exist in the object's labels.","type":"object","additionalProperties":{"type":"string"}}}},"spec":{"description":"Spec is the calico-windows-upgrade DaemonSet's PodSpec.","type":"object","properties":{"affinity":{"description":"Affinity is a group of affinity scheduling rules for the calico-windows-upgrade pods. If specified, this overrides any affinity that may be set on the calico-windows-upgrade DaemonSet. If omitted, the calico-windows-upgrade DaemonSet will use its default value for affinity. WARNING: Please note that this field will override the default calico-windows-upgrade DaemonSet affinity.","type":"object","properties":{"nodeAffinity":{"description":"Describes node affinity scheduling rules for the pod.","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"An empty preferred scheduling term matches all objects with implicit weight 0 (i.e. it's a no-op). A null preferred scheduling term matches no objects (i.e. is also a no-op).","type":"object","required":["preference","weight"],"properties":{"preference":{"description":"A node selector term, associated with the corresponding weight.","type":"object","properties":{"matchExpressions":{"description":"A list of node selector requirements by node's labels.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchFields":{"description":"A list of node selector requirements by node's fields.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}}},"x-kubernetes-map-type":"atomic"},"weight":{"description":"Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to an update), the system may or may not try to eventually evict the pod from its node.","type":"object","required":["nodeSelectorTerms"],"properties":{"nodeSelectorTerms":{"description":"Required. A list of node selector terms. The terms are ORed.","type":"array","items":{"description":"A null or empty node selector term matches no objects. The requirements of them are ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.","type":"object","properties":{"matchExpressions":{"description":"A list of node selector requirements by node's labels.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchFields":{"description":"A list of node selector requirements by node's fields.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}}},"x-kubernetes-map-type":"atomic"}}},"x-kubernetes-map-type":"atomic"}}},"podAffinity":{"description":"Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)","type":"object","required":["podAffinityTerm","weight"],"properties":{"podAffinityTerm":{"description":"Required. A pod affinity term, associated with the corresponding weight.","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}},"weight":{"description":"weight associated with matching the corresponding podAffinityTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.","type":"array","items":{"description":"Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key \u003ctopologyKey\u003e matches that of any node on which a pod of the set of pods is running","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}}}}},"podAntiAffinity":{"description":"Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling anti-affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)","type":"object","required":["podAffinityTerm","weight"],"properties":{"podAffinityTerm":{"description":"Required. A pod affinity term, associated with the corresponding weight.","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}},"weight":{"description":"weight associated with matching the corresponding podAffinityTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the anti-affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the anti-affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.","type":"array","items":{"description":"Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key \u003ctopologyKey\u003e matches that of any node on which a pod of the set of pods is running","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}}}}}}},"containers":{"description":"Containers is a list of calico-windows-upgrade containers. If specified, this overrides the specified calico-windows-upgrade DaemonSet containers. If omitted, the calico-windows-upgrade DaemonSet will use its default values for its containers.","type":"array","items":{"description":"CalicoWindowsUpgradeDaemonSetContainer is a calico-windows-upgrade DaemonSet container.","type":"object","required":["name"],"properties":{"name":{"description":"Name is an enum which identifies the calico-windows-upgrade DaemonSet container by name.","type":"string","enum":["calico-windows-upgrade"]},"resources":{"description":"Resources allows customization of limits and requests for compute resources such as cpu and memory. If specified, this overrides the named calico-windows-upgrade DaemonSet container's resources. If omitted, the calico-windows-upgrade DaemonSet will use its default value for this container's resources.","type":"object","properties":{"limits":{"description":"Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"requests":{"description":"Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}}}}}}},"nodeSelector":{"description":"NodeSelector is the calico-windows-upgrade pod's scheduling constraints. If specified, each of the key/value pairs are added to the calico-windows-upgrade DaemonSet nodeSelector provided the key does not already exist in the object's nodeSelector. If omitted, the calico-windows-upgrade DaemonSet will use its default value for nodeSelector. WARNING: Please note that this field will modify the default calico-windows-upgrade DaemonSet nodeSelector.","type":"object","additionalProperties":{"type":"string"}},"tolerations":{"description":"Tolerations is the calico-windows-upgrade pod's tolerations. If specified, this overrides any tolerations that may be set on the calico-windows-upgrade DaemonSet. If omitted, the calico-windows-upgrade DaemonSet will use its default value for tolerations. WARNING: Please note that this field will override the default calico-windows-upgrade DaemonSet tolerations.","type":"array","items":{"description":"The pod this Toleration is attached to tolerates any taint that matches the triple \u003ckey,value,effect\u003e using the matching operator \u003coperator\u003e.","type":"object","properties":{"effect":{"description":"Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute.","type":"string"},"key":{"description":"Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.","type":"string"},"operator":{"description":"Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category.","type":"string"},"tolerationSeconds":{"description":"TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system.","type":"integer","format":"int64"},"value":{"description":"Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string.","type":"string"}}}}}}}}}}}},"certificateManagement":{"description":"CertificateManagement configures pods to submit a CertificateSigningRequest to the certificates.k8s.io/v1beta1 API in order to obtain TLS certificates. This feature requires that you bring your own CSR signing and approval process, otherwise pods will be stuck during initialization.","type":"object","required":["caCert","signerName"],"properties":{"caCert":{"description":"Certificate of the authority that signs the CertificateSigningRequests in PEM format.","type":"string","format":"byte"},"keyAlgorithm":{"description":"Specify the algorithm used by pods to generate a key pair that is associated with the X.509 certificate request. Default: RSAWithSize2048","type":"string","enum":["","RSAWithSize2048","RSAWithSize4096","RSAWithSize8192","ECDSAWithCurve256","ECDSAWithCurve384","ECDSAWithCurve521"]},"signatureAlgorithm":{"description":"Specify the algorithm used for the signature of the X.509 certificate request. Default: SHA256WithRSA","type":"string","enum":["","SHA256WithRSA","SHA384WithRSA","SHA512WithRSA","ECDSAWithSHA256","ECDSAWithSHA384","ECDSAWithSHA512"]},"signerName":{"description":"When a CSR is issued to the certificates.k8s.io API, the signerName is added to the request in order to accommodate for clusters with multiple signers. Must be formatted as: `\u003cmy-domain\u003e/\u003cmy-signername\u003e`.","type":"string"}}},"cni":{"description":"CNI specifies the CNI that will be used by this installation.","type":"object","required":["type"],"properties":{"ipam":{"description":"IPAM specifies the pod IP address management that will be used in the Calico or Calico Enterprise installation.","type":"object","required":["type"],"properties":{"type":{"description":"Specifies the IPAM plugin that will be used in the Calico or Calico Enterprise installation. * For CNI Plugin Calico, this field defaults to Calico. * For CNI Plugin GKE, this field defaults to HostLocal. * For CNI Plugin AzureVNET, this field defaults to AzureVNET. * For CNI Plugin AmazonVPC, this field defaults to AmazonVPC. \n The IPAM plugin is installed and configured only if the CNI plugin is set to Calico, for all other values of the CNI plugin the plugin binaries and CNI config is a dependency that is expected to be installed separately. \n Default: Calico","type":"string","enum":["Calico","HostLocal","AmazonVPC","AzureVNET"]}}},"type":{"description":"Specifies the CNI plugin that will be used in the Calico or Calico Enterprise installation. * For KubernetesProvider GKE, this field defaults to GKE. * For KubernetesProvider AKS, this field defaults to AzureVNET. * For KubernetesProvider EKS, this field defaults to AmazonVPC. * If aws-node daemonset exists in kube-system when the Installation resource is created, this field defaults to AmazonVPC. * For all other cases this field defaults to Calico. \n For the value Calico, the CNI plugin binaries and CNI config will be installed as part of deployment, for all other values the CNI plugin binaries and CNI config is a dependency that is expected to be installed separately. \n Default: Calico","type":"string","enum":["Calico","GKE","AmazonVPC","AzureVNET"]}}},"componentResources":{"description":"Deprecated. Please use CalicoNodeDaemonSet, TyphaDeployment, and KubeControllersDeployment. ComponentResources can be used to customize the resource requirements for each component. Node, Typha, and KubeControllers are supported for installations.","type":"array","items":{"description":"Deprecated. Please use component resource config fields in Installation.Spec instead. The ComponentResource struct associates a ResourceRequirements with a component by name","type":"object","required":["componentName","resourceRequirements"],"properties":{"componentName":{"description":"ComponentName is an enum which identifies the component","type":"string","enum":["Node","Typha","KubeControllers"]},"resourceRequirements":{"description":"ResourceRequirements allows customization of limits and requests for compute resources such as cpu and memory.","type":"object","properties":{"limits":{"description":"Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"requests":{"description":"Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}}}}}}},"controlPlaneNodeSelector":{"description":"ControlPlaneNodeSelector is used to select control plane nodes on which to run Calico components. This is globally applied to all resources created by the operator excluding daemonsets.","type":"object","additionalProperties":{"type":"string"}},"controlPlaneReplicas":{"description":"ControlPlaneReplicas defines how many replicas of the control plane core components will be deployed. This field applies to all control plane components that support High Availability. Defaults to 2.","type":"integer","format":"int32"},"controlPlaneTolerations":{"description":"ControlPlaneTolerations specify tolerations which are then globally applied to all resources created by the operator.","type":"array","items":{"description":"The pod this Toleration is attached to tolerates any taint that matches the triple \u003ckey,value,effect\u003e using the matching operator \u003coperator\u003e.","type":"object","properties":{"effect":{"description":"Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute.","type":"string"},"key":{"description":"Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.","type":"string"},"operator":{"description":"Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category.","type":"string"},"tolerationSeconds":{"description":"TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system.","type":"integer","format":"int64"},"value":{"description":"Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string.","type":"string"}}}},"csiNodeDriverDaemonSet":{"description":"CSINodeDriverDaemonSet configures the csi-node-driver DaemonSet.","type":"object","properties":{"metadata":{"description":"Metadata is a subset of a Kubernetes object's metadata that is added to the DaemonSet.","type":"object","properties":{"annotations":{"description":"Annotations is a map of arbitrary non-identifying metadata. Each of these key/value pairs are added to the object's annotations provided the key does not already exist in the object's annotations.","type":"object","additionalProperties":{"type":"string"}},"labels":{"description":"Labels is a map of string keys and values that may match replicaset and service selectors. Each of these key/value pairs are added to the object's labels provided the key does not already exist in the object's labels.","type":"object","additionalProperties":{"type":"string"}}}},"spec":{"description":"Spec is the specification of the csi-node-driver DaemonSet.","type":"object","properties":{"minReadySeconds":{"description":"MinReadySeconds is the minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. If specified, this overrides any minReadySeconds value that may be set on the csi-node-driver DaemonSet. If omitted, the csi-node-driver DaemonSet will use its default value for minReadySeconds.","type":"integer","format":"int32","maximum":2147483647,"minimum":0},"template":{"description":"Template describes the csi-node-driver DaemonSet pod that will be created.","type":"object","properties":{"metadata":{"description":"Metadata is a subset of a Kubernetes object's metadata that is added to the pod's metadata.","type":"object","properties":{"annotations":{"description":"Annotations is a map of arbitrary non-identifying metadata. Each of these key/value pairs are added to the object's annotations provided the key does not already exist in the object's annotations.","type":"object","additionalProperties":{"type":"string"}},"labels":{"description":"Labels is a map of string keys and values that may match replicaset and service selectors. Each of these key/value pairs are added to the object's labels provided the key does not already exist in the object's labels.","type":"object","additionalProperties":{"type":"string"}}}},"spec":{"description":"Spec is the csi-node-driver DaemonSet's PodSpec.","type":"object","properties":{"affinity":{"description":"Affinity is a group of affinity scheduling rules for the csi-node-driver pods. If specified, this overrides any affinity that may be set on the csi-node-driver DaemonSet. If omitted, the csi-node-driver DaemonSet will use its default value for affinity. WARNING: Please note that this field will override the default csi-node-driver DaemonSet affinity.","type":"object","properties":{"nodeAffinity":{"description":"Describes node affinity scheduling rules for the pod.","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"An empty preferred scheduling term matches all objects with implicit weight 0 (i.e. it's a no-op). A null preferred scheduling term matches no objects (i.e. is also a no-op).","type":"object","required":["preference","weight"],"properties":{"preference":{"description":"A node selector term, associated with the corresponding weight.","type":"object","properties":{"matchExpressions":{"description":"A list of node selector requirements by node's labels.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchFields":{"description":"A list of node selector requirements by node's fields.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}}},"x-kubernetes-map-type":"atomic"},"weight":{"description":"Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to an update), the system may or may not try to eventually evict the pod from its node.","type":"object","required":["nodeSelectorTerms"],"properties":{"nodeSelectorTerms":{"description":"Required. A list of node selector terms. The terms are ORed.","type":"array","items":{"description":"A null or empty node selector term matches no objects. The requirements of them are ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.","type":"object","properties":{"matchExpressions":{"description":"A list of node selector requirements by node's labels.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchFields":{"description":"A list of node selector requirements by node's fields.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}}},"x-kubernetes-map-type":"atomic"}}},"x-kubernetes-map-type":"atomic"}}},"podAffinity":{"description":"Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)","type":"object","required":["podAffinityTerm","weight"],"properties":{"podAffinityTerm":{"description":"Required. A pod affinity term, associated with the corresponding weight.","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}},"weight":{"description":"weight associated with matching the corresponding podAffinityTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.","type":"array","items":{"description":"Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key \u003ctopologyKey\u003e matches that of any node on which a pod of the set of pods is running","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}}}}},"podAntiAffinity":{"description":"Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling anti-affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)","type":"object","required":["podAffinityTerm","weight"],"properties":{"podAffinityTerm":{"description":"Required. A pod affinity term, associated with the corresponding weight.","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}},"weight":{"description":"weight associated with matching the corresponding podAffinityTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the anti-affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the anti-affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.","type":"array","items":{"description":"Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key \u003ctopologyKey\u003e matches that of any node on which a pod of the set of pods is running","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}}}}}}},"containers":{"description":"Containers is a list of csi-node-driver containers. If specified, this overrides the specified csi-node-driver DaemonSet containers. If omitted, the csi-node-driver DaemonSet will use its default values for its containers.","type":"array","items":{"description":"CSINodeDriverDaemonSetContainer is a csi-node-driver DaemonSet container.","type":"object","required":["name"],"properties":{"name":{"description":"Name is an enum which identifies the csi-node-driver DaemonSet container by name.","type":"string","enum":["csi-node-driver"]},"resources":{"description":"Resources allows customization of limits and requests for compute resources such as cpu and memory. If specified, this overrides the named csi-node-driver DaemonSet container's resources. If omitted, the csi-node-driver DaemonSet will use its default value for this container's resources.","type":"object","properties":{"limits":{"description":"Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"requests":{"description":"Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}}}}}}},"nodeSelector":{"description":"NodeSelector is the csi-node-driver pod's scheduling constraints. If specified, each of the key/value pairs are added to the csi-node-driver DaemonSet nodeSelector provided the key does not already exist in the object's nodeSelector. If omitted, the csi-node-driver DaemonSet will use its default value for nodeSelector. WARNING: Please note that this field will modify the default csi-node-driver DaemonSet nodeSelector.","type":"object","additionalProperties":{"type":"string"}},"tolerations":{"description":"Tolerations is the csi-node-driver pod's tolerations. If specified, this overrides any tolerations that may be set on the csi-node-driver DaemonSet. If omitted, the csi-node-driver DaemonSet will use its default value for tolerations. WARNING: Please note that this field will override the default csi-node-driver DaemonSet tolerations.","type":"array","items":{"description":"The pod this Toleration is attached to tolerates any taint that matches the triple \u003ckey,value,effect\u003e using the matching operator \u003coperator\u003e.","type":"object","properties":{"effect":{"description":"Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute.","type":"string"},"key":{"description":"Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.","type":"string"},"operator":{"description":"Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category.","type":"string"},"tolerationSeconds":{"description":"TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system.","type":"integer","format":"int64"},"value":{"description":"Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string.","type":"string"}}}}}}}}}}}},"fipsMode":{"description":"FIPSMode uses images and features only that are using FIPS 140-2 validated cryptographic modules and standards. Default: Disabled","type":"string","enum":["Enabled","Disabled"]},"flexVolumePath":{"description":"FlexVolumePath optionally specifies a custom path for FlexVolume. If not specified, FlexVolume will be enabled by default. If set to 'None', FlexVolume will be disabled. The default is based on the kubernetesProvider.","type":"string"},"imagePath":{"description":"ImagePath allows for the path part of an image to be specified. If specified then the specified value will be used as the image path for each image. If not specified or empty, the default for each image will be used. A special case value, UseDefault, is supported to explicitly specify the default image path will be used for each image. \n Image format: `\u003cregistry\u003e\u003cimagePath\u003e/\u003cimagePrefix\u003e\u003cimageName\u003e:\u003cimage-tag\u003e` \n This option allows configuring the `\u003cimagePath\u003e` portion of the above format.","type":"string"},"imagePrefix":{"description":"ImagePrefix allows for the prefix part of an image to be specified. If specified then the given value will be used as a prefix on each image. If not specified or empty, no prefix will be used. A special case value, UseDefault, is supported to explicitly specify the default image prefix will be used for each image. \n Image format: `\u003cregistry\u003e\u003cimagePath\u003e/\u003cimagePrefix\u003e\u003cimageName\u003e:\u003cimage-tag\u003e` \n This option allows configuring the `\u003cimagePrefix\u003e` portion of the above format.","type":"string"},"imagePullSecrets":{"description":"ImagePullSecrets is an array of references to container registry pull secrets to use. These are applied to all images to be pulled.","type":"array","items":{"description":"LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.","type":"object","properties":{"name":{"description":"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?","type":"string"}},"x-kubernetes-map-type":"atomic"}},"kubeletVolumePluginPath":{"description":"KubeletVolumePluginPath optionally specifies enablement of Calico CSI plugin. If not specified, CSI will be enabled by default. If set to 'None', CSI will be disabled. Default: /var/lib/kubelet","type":"string"},"kubernetesProvider":{"description":"KubernetesProvider specifies a particular provider of the Kubernetes platform and enables provider-specific configuration. If the specified value is empty, the Operator will attempt to automatically determine the current provider. If the specified value is not empty, the Operator will still attempt auto-detection, but will additionally compare the auto-detected value to the specified value to confirm they match.","type":"string","enum":["","EKS","GKE","AKS","OpenShift","DockerEnterprise","RKE2"]},"logging":{"description":"Logging Configuration for Components","type":"object","properties":{"cni":{"description":"Customized logging specification for calico-cni plugin","type":"object","properties":{"logFileMaxAgeDays":{"description":"Default: 30 (days)","type":"integer","format":"int32"},"logFileMaxCount":{"description":"Default: 10","type":"integer","format":"int32"},"logFileMaxSize":{"description":"Default: 100Mi","pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true},"logSeverity":{"description":"Default: Info","type":"string","enum":["Error","Warning","Debug","Info"]}}}}},"nodeMetricsPort":{"description":"NodeMetricsPort specifies which port calico/node serves prometheus metrics on. By default, metrics are not enabled. If specified, this overrides any FelixConfiguration resources which may exist. If omitted, then prometheus metrics may still be configured through FelixConfiguration.","type":"integer","format":"int32"},"nodeUpdateStrategy":{"description":"NodeUpdateStrategy can be used to customize the desired update strategy, such as the MaxUnavailable field.","type":"object","properties":{"rollingUpdate":{"description":"Rolling update config params. Present only if type = \"RollingUpdate\". --- TODO: Update this to follow our convention for oneOf, whatever we decide it to be. Same as Deployment `strategy.rollingUpdate`. See https://github.com/kubernetes/kubernetes/issues/35345","type":"object","properties":{"maxSurge":{"description":"The maximum number of nodes with an existing available DaemonSet pod that can have an updated DaemonSet pod during during an update. Value can be an absolute number (ex: 5) or a percentage of desired pods (ex: 10%). This can not be 0 if MaxUnavailable is 0. Absolute number is calculated from percentage by rounding up to a minimum of 1. Default value is 0. Example: when this is set to 30%, at most 30% of the total number of nodes that should be running the daemon pod (i.e. status.desiredNumberScheduled) can have their a new pod created before the old pod is marked as deleted. The update starts by launching new pods on 30% of nodes. Once an updated pod is available (Ready for at least minReadySeconds) the old DaemonSet pod on that node is marked deleted. If the old pod becomes unavailable for any reason (Ready transitions to false, is evicted, or is drained) an updated pod is immediatedly created on that node without considering surge limits. Allowing surge implies the possibility that the resources consumed by the daemonset on any given node can double if the readiness check fails, and so resource intensive daemonsets should take into account that they may cause evictions during disruption.","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true},"maxUnavailable":{"description":"The maximum number of DaemonSet pods that can be unavailable during the update. Value can be an absolute number (ex: 5) or a percentage of total number of DaemonSet pods at the start of the update (ex: 10%). Absolute number is calculated from percentage by rounding up. This cannot be 0 if MaxSurge is 0 Default value is 1. Example: when this is set to 30%, at most 30% of the total number of nodes that should be running the daemon pod (i.e. status.desiredNumberScheduled) can have their pods stopped for an update at any given time. The update starts by stopping at most 30% of those DaemonSet pods and then brings up new DaemonSet pods in their place. Once the new pods are available, it then proceeds onto other DaemonSet pods, thus ensuring that at least 70% of original number of DaemonSet pods are available at all times during the update.","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}}},"type":{"description":"Type of daemon set update. Can be \"RollingUpdate\" or \"OnDelete\". Default is RollingUpdate.","type":"string"}}},"nonPrivileged":{"description":"NonPrivileged configures Calico to be run in non-privileged containers as non-root users where possible.","type":"string"},"registry":{"description":"Registry is the default Docker registry used for component Docker images. If specified then the given value must end with a slash character (`/`) and all images will be pulled from this registry. If not specified then the default registries will be used. A special case value, UseDefault, is supported to explicitly specify the default registries will be used. \n Image format: `\u003cregistry\u003e\u003cimagePath\u003e/\u003cimagePrefix\u003e\u003cimageName\u003e:\u003cimage-tag\u003e` \n This option allows configuring the `\u003cregistry\u003e` portion of the above format.","type":"string"},"typhaAffinity":{"description":"Deprecated. Please use Installation.Spec.TyphaDeployment instead. TyphaAffinity allows configuration of node affinity characteristics for Typha pods.","type":"object","properties":{"nodeAffinity":{"description":"NodeAffinity describes node affinity scheduling rules for typha.","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions.","type":"array","items":{"description":"An empty preferred scheduling term matches all objects with implicit weight 0 (i.e. it's a no-op). A null preferred scheduling term matches no objects (i.e. is also a no-op).","type":"object","required":["preference","weight"],"properties":{"preference":{"description":"A node selector term, associated with the corresponding weight.","type":"object","properties":{"matchExpressions":{"description":"A list of node selector requirements by node's labels.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchFields":{"description":"A list of node selector requirements by node's fields.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}}},"x-kubernetes-map-type":"atomic"},"weight":{"description":"Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"WARNING: Please note that if the affinity requirements specified by this field are not met at scheduling time, the pod will NOT be scheduled onto the node. There is no fallback to another affinity rules with this setting. This may cause networking disruption or even catastrophic failure! PreferredDuringSchedulingIgnoredDuringExecution should be used for affinity unless there is a specific well understood reason to use RequiredDuringSchedulingIgnoredDuringExecution and you can guarantee that the RequiredDuringSchedulingIgnoredDuringExecution will always have sufficient nodes to satisfy the requirement. NOTE: RequiredDuringSchedulingIgnoredDuringExecution is set by default for AKS nodes, to avoid scheduling Typhas on virtual-nodes. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to an update), the system may or may not try to eventually evict the pod from its node.","type":"object","required":["nodeSelectorTerms"],"properties":{"nodeSelectorTerms":{"description":"Required. A list of node selector terms. The terms are ORed.","type":"array","items":{"description":"A null or empty node selector term matches no objects. The requirements of them are ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.","type":"object","properties":{"matchExpressions":{"description":"A list of node selector requirements by node's labels.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchFields":{"description":"A list of node selector requirements by node's fields.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}}},"x-kubernetes-map-type":"atomic"}}},"x-kubernetes-map-type":"atomic"}}}}},"typhaDeployment":{"description":"TyphaDeployment configures the typha Deployment. If used in conjunction with the deprecated ComponentResources or TyphaAffinity, then these overrides take precedence.","type":"object","properties":{"metadata":{"description":"Metadata is a subset of a Kubernetes object's metadata that is added to the Deployment.","type":"object","properties":{"annotations":{"description":"Annotations is a map of arbitrary non-identifying metadata. Each of these key/value pairs are added to the object's annotations provided the key does not already exist in the object's annotations.","type":"object","additionalProperties":{"type":"string"}},"labels":{"description":"Labels is a map of string keys and values that may match replicaset and service selectors. Each of these key/value pairs are added to the object's labels provided the key does not already exist in the object's labels.","type":"object","additionalProperties":{"type":"string"}}}},"spec":{"description":"Spec is the specification of the typha Deployment.","type":"object","properties":{"minReadySeconds":{"description":"MinReadySeconds is the minimum number of seconds for which a newly created Deployment pod should be ready without any of its container crashing, for it to be considered available. If specified, this overrides any minReadySeconds value that may be set on the typha Deployment. If omitted, the typha Deployment will use its default value for minReadySeconds.","type":"integer","format":"int32","maximum":2147483647,"minimum":0},"strategy":{"description":"The deployment strategy to use to replace existing pods with new ones.","type":"object","properties":{"rollingUpdate":{"description":"Rolling update config params. Present only if DeploymentStrategyType = RollingUpdate. to be.","type":"object","properties":{"maxSurge":{"description":"The maximum number of pods that can be scheduled above the desired number of pods. Value can be an absolute number (ex: 5) or a percentage of desired pods (ex: 10%). This can not be 0 if MaxUnavailable is 0. Absolute number is calculated from percentage by rounding up. Defaults to 25%. Example: when this is set to 30%, the new ReplicaSet can be scaled up immediately when the rolling update starts, such that the total number of old and new pods do not exceed 130% of desired pods. Once old pods have been killed, new ReplicaSet can be scaled up further, ensuring that total number of pods running at any time during the update is at most 130% of desired pods.","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true},"maxUnavailable":{"description":"The maximum number of pods that can be unavailable during the update. Value can be an absolute number (ex: 5) or a percentage of desired pods (ex: 10%). Absolute number is calculated from percentage by rounding down. This can not be 0 if MaxSurge is 0. Defaults to 25%. Example: when this is set to 30%, the old ReplicaSet can be scaled down to 70% of desired pods immediately when the rolling update starts. Once new pods are ready, old ReplicaSet can be scaled down further, followed by scaling up the new ReplicaSet, ensuring that the total number of pods available at all times during the update is at least 70% of desired pods.","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}}}}},"template":{"description":"Template describes the typha Deployment pod that will be created.","type":"object","properties":{"metadata":{"description":"Metadata is a subset of a Kubernetes object's metadata that is added to the pod's metadata.","type":"object","properties":{"annotations":{"description":"Annotations is a map of arbitrary non-identifying metadata. Each of these key/value pairs are added to the object's annotations provided the key does not already exist in the object's annotations.","type":"object","additionalProperties":{"type":"string"}},"labels":{"description":"Labels is a map of string keys and values that may match replicaset and service selectors. Each of these key/value pairs are added to the object's labels provided the key does not already exist in the object's labels.","type":"object","additionalProperties":{"type":"string"}}}},"spec":{"description":"Spec is the typha Deployment's PodSpec.","type":"object","properties":{"affinity":{"description":"Affinity is a group of affinity scheduling rules for the typha pods. If specified, this overrides any affinity that may be set on the typha Deployment. If omitted, the typha Deployment will use its default value for affinity. If used in conjunction with the deprecated TyphaAffinity, then this value takes precedence. WARNING: Please note that this field will override the default calico-typha Deployment affinity.","type":"object","properties":{"nodeAffinity":{"description":"Describes node affinity scheduling rules for the pod.","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"An empty preferred scheduling term matches all objects with implicit weight 0 (i.e. it's a no-op). A null preferred scheduling term matches no objects (i.e. is also a no-op).","type":"object","required":["preference","weight"],"properties":{"preference":{"description":"A node selector term, associated with the corresponding weight.","type":"object","properties":{"matchExpressions":{"description":"A list of node selector requirements by node's labels.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchFields":{"description":"A list of node selector requirements by node's fields.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}}},"x-kubernetes-map-type":"atomic"},"weight":{"description":"Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to an update), the system may or may not try to eventually evict the pod from its node.","type":"object","required":["nodeSelectorTerms"],"properties":{"nodeSelectorTerms":{"description":"Required. A list of node selector terms. The terms are ORed.","type":"array","items":{"description":"A null or empty node selector term matches no objects. The requirements of them are ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.","type":"object","properties":{"matchExpressions":{"description":"A list of node selector requirements by node's labels.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchFields":{"description":"A list of node selector requirements by node's fields.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}}},"x-kubernetes-map-type":"atomic"}}},"x-kubernetes-map-type":"atomic"}}},"podAffinity":{"description":"Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)","type":"object","required":["podAffinityTerm","weight"],"properties":{"podAffinityTerm":{"description":"Required. A pod affinity term, associated with the corresponding weight.","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}},"weight":{"description":"weight associated with matching the corresponding podAffinityTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.","type":"array","items":{"description":"Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key \u003ctopologyKey\u003e matches that of any node on which a pod of the set of pods is running","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}}}}},"podAntiAffinity":{"description":"Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling anti-affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)","type":"object","required":["podAffinityTerm","weight"],"properties":{"podAffinityTerm":{"description":"Required. A pod affinity term, associated with the corresponding weight.","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}},"weight":{"description":"weight associated with matching the corresponding podAffinityTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the anti-affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the anti-affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.","type":"array","items":{"description":"Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key \u003ctopologyKey\u003e matches that of any node on which a pod of the set of pods is running","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}}}}}}},"containers":{"description":"Containers is a list of typha containers. If specified, this overrides the specified typha Deployment containers. If omitted, the typha Deployment will use its default values for its containers.","type":"array","items":{"description":"TyphaDeploymentContainer is a typha Deployment container.","type":"object","required":["name"],"properties":{"name":{"description":"Name is an enum which identifies the typha Deployment container by name.","type":"string","enum":["calico-typha"]},"resources":{"description":"Resources allows customization of limits and requests for compute resources such as cpu and memory. If specified, this overrides the named typha Deployment container's resources. If omitted, the typha Deployment will use its default value for this container's resources. If used in conjunction with the deprecated ComponentResources, then this value takes precedence.","type":"object","properties":{"limits":{"description":"Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"requests":{"description":"Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}}}}}}},"initContainers":{"description":"InitContainers is a list of typha init containers. If specified, this overrides the specified typha Deployment init containers. If omitted, the typha Deployment will use its default values for its init containers.","type":"array","items":{"description":"TyphaDeploymentInitContainer is a typha Deployment init container.","type":"object","required":["name"],"properties":{"name":{"description":"Name is an enum which identifies the typha Deployment init container by name.","type":"string","enum":["typha-certs-key-cert-provisioner"]},"resources":{"description":"Resources allows customization of limits and requests for compute resources such as cpu and memory. If specified, this overrides the named typha Deployment init container's resources. If omitted, the typha Deployment will use its default value for this init container's resources. If used in conjunction with the deprecated ComponentResources, then this value takes precedence.","type":"object","properties":{"limits":{"description":"Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"requests":{"description":"Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}}}}}}},"nodeSelector":{"description":"NodeSelector is the calico-typha pod's scheduling constraints. If specified, each of the key/value pairs are added to the calico-typha Deployment nodeSelector provided the key does not already exist in the object's nodeSelector. If omitted, the calico-typha Deployment will use its default value for nodeSelector. WARNING: Please note that this field will modify the default calico-typha Deployment nodeSelector.","type":"object","additionalProperties":{"type":"string"}},"terminationGracePeriodSeconds":{"description":"Optional duration in seconds the pod needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.","type":"integer","format":"int64"},"tolerations":{"description":"Tolerations is the typha pod's tolerations. If specified, this overrides any tolerations that may be set on the typha Deployment. If omitted, the typha Deployment will use its default value for tolerations. WARNING: Please note that this field will override the default calico-typha Deployment tolerations.","type":"array","items":{"description":"The pod this Toleration is attached to tolerates any taint that matches the triple \u003ckey,value,effect\u003e using the matching operator \u003coperator\u003e.","type":"object","properties":{"effect":{"description":"Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute.","type":"string"},"key":{"description":"Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.","type":"string"},"operator":{"description":"Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category.","type":"string"},"tolerationSeconds":{"description":"TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system.","type":"integer","format":"int64"},"value":{"description":"Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string.","type":"string"}}}},"topologySpreadConstraints":{"description":"TopologySpreadConstraints describes how a group of pods ought to spread across topology domains. Scheduler will schedule pods in a way which abides by the constraints. All topologySpreadConstraints are ANDed.","type":"array","items":{"description":"TopologySpreadConstraint specifies how to spread matching pods among the given topology.","type":"object","required":["maxSkew","topologyKey","whenUnsatisfiable"],"properties":{"labelSelector":{"description":"LabelSelector is used to find matching pods. Pods that match this label selector are counted to determine the number of pods in their corresponding topology domain.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"matchLabelKeys":{"description":"MatchLabelKeys is a set of pod label keys to select the pods over which spreading will be calculated. The keys are used to lookup values from the incoming pod labels, those key-value labels are ANDed with labelSelector to select the group of existing pods over which spreading will be calculated for the incoming pod. Keys that don't exist in the incoming pod labels will be ignored. A null or empty list means only match against labelSelector.","type":"array","items":{"type":"string"},"x-kubernetes-list-type":"atomic"},"maxSkew":{"description":"MaxSkew describes the degree to which pods may be unevenly distributed. When `whenUnsatisfiable=DoNotSchedule`, it is the maximum permitted difference between the number of matching pods in the target topology and the global minimum. The global minimum is the minimum number of matching pods in an eligible domain or zero if the number of eligible domains is less than MinDomains. For example, in a 3-zone cluster, MaxSkew is set to 1, and pods with the same labelSelector spread as 2/2/1: In this case, the global minimum is 1. | zone1 | zone2 | zone3 | |  P P  |  P P  |   P   | - if MaxSkew is 1, incoming pod can only be scheduled to zone3 to become 2/2/2; scheduling it onto zone1(zone2) would make the ActualSkew(3-1) on zone1(zone2) violate MaxSkew(1). - if MaxSkew is 2, incoming pod can be scheduled onto any zone. When `whenUnsatisfiable=ScheduleAnyway`, it is used to give higher precedence to topologies that satisfy it. It's a required field. Default value is 1 and 0 is not allowed.","type":"integer","format":"int32"},"minDomains":{"description":"MinDomains indicates a minimum number of eligible domains. When the number of eligible domains with matching topology keys is less than minDomains, Pod Topology Spread treats \"global minimum\" as 0, and then the calculation of Skew is performed. And when the number of eligible domains with matching topology keys equals or greater than minDomains, this value has no effect on scheduling. As a result, when the number of eligible domains is less than minDomains, scheduler won't schedule more than maxSkew Pods to those domains. If value is nil, the constraint behaves as if MinDomains is equal to 1. Valid values are integers greater than 0. When value is not nil, WhenUnsatisfiable must be DoNotSchedule. \n For example, in a 3-zone cluster, MaxSkew is set to 2, MinDomains is set to 5 and pods with the same labelSelector spread as 2/2/2: | zone1 | zone2 | zone3 | |  P P  |  P P  |  P P  | The number of domains is less than 5(MinDomains), so \"global minimum\" is treated as 0. In this situation, new pod with the same labelSelector cannot be scheduled, because computed skew will be 3(3 - 0) if new Pod is scheduled to any of the three zones, it will violate MaxSkew. \n This is a beta field and requires the MinDomainsInPodTopologySpread feature gate to be enabled (enabled by default).","type":"integer","format":"int32"},"nodeAffinityPolicy":{"description":"NodeAffinityPolicy indicates how we will treat Pod's nodeAffinity/nodeSelector when calculating pod topology spread skew. Options are: - Honor: only nodes matching nodeAffinity/nodeSelector are included in the calculations. - Ignore: nodeAffinity/nodeSelector are ignored. All nodes are included in the calculations. \n If this value is nil, the behavior is equivalent to the Honor policy. This is a alpha-level feature enabled by the NodeInclusionPolicyInPodTopologySpread feature flag.","type":"string"},"nodeTaintsPolicy":{"description":"NodeTaintsPolicy indicates how we will treat node taints when calculating pod topology spread skew. Options are: - Honor: nodes without taints, along with tainted nodes for which the incoming pod has a toleration, are included. - Ignore: node taints are ignored. All nodes are included. \n If this value is nil, the behavior is equivalent to the Ignore policy. This is a alpha-level feature enabled by the NodeInclusionPolicyInPodTopologySpread feature flag.","type":"string"},"topologyKey":{"description":"TopologyKey is the key of node labels. Nodes that have a label with this key and identical values are considered to be in the same topology. We consider each \u003ckey, value\u003e as a \"bucket\", and try to put balanced number of pods into each bucket. We define a domain as a particular instance of a topology. Also, we define an eligible domain as a domain whose nodes meet the requirements of nodeAffinityPolicy and nodeTaintsPolicy. e.g. If TopologyKey is \"kubernetes.io/hostname\", each Node is a domain of that topology. And, if TopologyKey is \"topology.kubernetes.io/zone\", each zone is a domain of that topology. It's a required field.","type":"string"},"whenUnsatisfiable":{"description":"WhenUnsatisfiable indicates how to deal with a pod if it doesn't satisfy the spread constraint. - DoNotSchedule (default) tells the scheduler not to schedule it. - ScheduleAnyway tells the scheduler to schedule the pod in any location, but giving higher precedence to topologies that would help reduce the skew. A constraint is considered \"Unsatisfiable\" for an incoming pod if and only if every possible node assignment for that pod would violate \"MaxSkew\" on some topology. For example, in a 3-zone cluster, MaxSkew is set to 1, and pods with the same labelSelector spread as 3/1/1: | zone1 | zone2 | zone3 | | P P P |   P   |   P   | If WhenUnsatisfiable is set to DoNotSchedule, incoming pod can only be scheduled to zone2(zone3) to become 3/2/1(3/1/2) as ActualSkew(2-1) on zone2(zone3) satisfies MaxSkew(1). In other words, the cluster can still be imbalanced, but scheduler won't make it *more* imbalanced. It's a required field.","type":"string"}}}}}}}}}}}},"typhaMetricsPort":{"description":"TyphaMetricsPort specifies which port calico/typha serves prometheus metrics on. By default, metrics are not enabled.","type":"integer","format":"int32"},"variant":{"description":"Variant is the product to install - one of Calico or TigeraSecureEnterprise Default: Calico","type":"string","enum":["Calico","TigeraSecureEnterprise"]}}},"status":{"description":"Most recently observed state for the Calico or Calico Enterprise installation.","type":"object","properties":{"calicoVersion":{"description":"CalicoVersion shows the current running version of calico. CalicoVersion along with Variant is needed to know the exact version deployed.","type":"string"},"computed":{"description":"Computed is the final installation including overlaid resources.","type":"object","properties":{"calicoKubeControllersDeployment":{"description":"CalicoKubeControllersDeployment configures the calico-kube-controllers Deployment. If used in conjunction with the deprecated ComponentResources, then these overrides take precedence.","type":"object","properties":{"metadata":{"description":"Metadata is a subset of a Kubernetes object's metadata that is added to the Deployment.","type":"object","properties":{"annotations":{"description":"Annotations is a map of arbitrary non-identifying metadata. Each of these key/value pairs are added to the object's annotations provided the key does not already exist in the object's annotations.","type":"object","additionalProperties":{"type":"string"}},"labels":{"description":"Labels is a map of string keys and values that may match replicaset and service selectors. Each of these key/value pairs are added to the object's labels provided the key does not already exist in the object's labels.","type":"object","additionalProperties":{"type":"string"}}}},"spec":{"description":"Spec is the specification of the calico-kube-controllers Deployment.","type":"object","properties":{"minReadySeconds":{"description":"MinReadySeconds is the minimum number of seconds for which a newly created Deployment pod should be ready without any of its container crashing, for it to be considered available. If specified, this overrides any minReadySeconds value that may be set on the calico-kube-controllers Deployment. If omitted, the calico-kube-controllers Deployment will use its default value for minReadySeconds.","type":"integer","format":"int32","maximum":2147483647,"minimum":0},"template":{"description":"Template describes the calico-kube-controllers Deployment pod that will be created.","type":"object","properties":{"metadata":{"description":"Metadata is a subset of a Kubernetes object's metadata that is added to the pod's metadata.","type":"object","properties":{"annotations":{"description":"Annotations is a map of arbitrary non-identifying metadata. Each of these key/value pairs are added to the object's annotations provided the key does not already exist in the object's annotations.","type":"object","additionalProperties":{"type":"string"}},"labels":{"description":"Labels is a map of string keys and values that may match replicaset and service selectors. Each of these key/value pairs are added to the object's labels provided the key does not already exist in the object's labels.","type":"object","additionalProperties":{"type":"string"}}}},"spec":{"description":"Spec is the calico-kube-controllers Deployment's PodSpec.","type":"object","properties":{"affinity":{"description":"Affinity is a group of affinity scheduling rules for the calico-kube-controllers pods. If specified, this overrides any affinity that may be set on the calico-kube-controllers Deployment. If omitted, the calico-kube-controllers Deployment will use its default value for affinity. WARNING: Please note that this field will override the default calico-kube-controllers Deployment affinity.","type":"object","properties":{"nodeAffinity":{"description":"Describes node affinity scheduling rules for the pod.","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"An empty preferred scheduling term matches all objects with implicit weight 0 (i.e. it's a no-op). A null preferred scheduling term matches no objects (i.e. is also a no-op).","type":"object","required":["preference","weight"],"properties":{"preference":{"description":"A node selector term, associated with the corresponding weight.","type":"object","properties":{"matchExpressions":{"description":"A list of node selector requirements by node's labels.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchFields":{"description":"A list of node selector requirements by node's fields.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}}},"x-kubernetes-map-type":"atomic"},"weight":{"description":"Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to an update), the system may or may not try to eventually evict the pod from its node.","type":"object","required":["nodeSelectorTerms"],"properties":{"nodeSelectorTerms":{"description":"Required. A list of node selector terms. The terms are ORed.","type":"array","items":{"description":"A null or empty node selector term matches no objects. The requirements of them are ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.","type":"object","properties":{"matchExpressions":{"description":"A list of node selector requirements by node's labels.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchFields":{"description":"A list of node selector requirements by node's fields.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}}},"x-kubernetes-map-type":"atomic"}}},"x-kubernetes-map-type":"atomic"}}},"podAffinity":{"description":"Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)","type":"object","required":["podAffinityTerm","weight"],"properties":{"podAffinityTerm":{"description":"Required. A pod affinity term, associated with the corresponding weight.","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}},"weight":{"description":"weight associated with matching the corresponding podAffinityTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.","type":"array","items":{"description":"Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key \u003ctopologyKey\u003e matches that of any node on which a pod of the set of pods is running","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}}}}},"podAntiAffinity":{"description":"Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling anti-affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)","type":"object","required":["podAffinityTerm","weight"],"properties":{"podAffinityTerm":{"description":"Required. A pod affinity term, associated with the corresponding weight.","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}},"weight":{"description":"weight associated with matching the corresponding podAffinityTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the anti-affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the anti-affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.","type":"array","items":{"description":"Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key \u003ctopologyKey\u003e matches that of any node on which a pod of the set of pods is running","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}}}}}}},"containers":{"description":"Containers is a list of calico-kube-controllers containers. If specified, this overrides the specified calico-kube-controllers Deployment containers. If omitted, the calico-kube-controllers Deployment will use its default values for its containers.","type":"array","items":{"description":"CalicoKubeControllersDeploymentContainer is a calico-kube-controllers Deployment container.","type":"object","required":["name"],"properties":{"name":{"description":"Name is an enum which identifies the calico-kube-controllers Deployment container by name.","type":"string","enum":["calico-kube-controllers"]},"resources":{"description":"Resources allows customization of limits and requests for compute resources such as cpu and memory. If specified, this overrides the named calico-kube-controllers Deployment container's resources. If omitted, the calico-kube-controllers Deployment will use its default value for this container's resources. If used in conjunction with the deprecated ComponentResources, then this value takes precedence.","type":"object","properties":{"limits":{"description":"Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"requests":{"description":"Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}}}}}}},"nodeSelector":{"description":"NodeSelector is the calico-kube-controllers pod's scheduling constraints. If specified, each of the key/value pairs are added to the calico-kube-controllers Deployment nodeSelector provided the key does not already exist in the object's nodeSelector. If used in conjunction with ControlPlaneNodeSelector, that nodeSelector is set on the calico-kube-controllers Deployment and each of this field's key/value pairs are added to the calico-kube-controllers Deployment nodeSelector provided the key does not already exist in the object's nodeSelector. If omitted, the calico-kube-controllers Deployment will use its default value for nodeSelector. WARNING: Please note that this field will modify the default calico-kube-controllers Deployment nodeSelector.","type":"object","additionalProperties":{"type":"string"}},"tolerations":{"description":"Tolerations is the calico-kube-controllers pod's tolerations. If specified, this overrides any tolerations that may be set on the calico-kube-controllers Deployment. If omitted, the calico-kube-controllers Deployment will use its default value for tolerations. WARNING: Please note that this field will override the default calico-kube-controllers Deployment tolerations.","type":"array","items":{"description":"The pod this Toleration is attached to tolerates any taint that matches the triple \u003ckey,value,effect\u003e using the matching operator \u003coperator\u003e.","type":"object","properties":{"effect":{"description":"Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute.","type":"string"},"key":{"description":"Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.","type":"string"},"operator":{"description":"Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category.","type":"string"},"tolerationSeconds":{"description":"TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system.","type":"integer","format":"int64"},"value":{"description":"Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string.","type":"string"}}}}}}}}}}}},"calicoNetwork":{"description":"CalicoNetwork specifies networking configuration options for Calico.","type":"object","properties":{"bgp":{"description":"BGP configures whether or not to enable Calico's BGP capabilities.","type":"string","enum":["Enabled","Disabled"]},"containerIPForwarding":{"description":"ContainerIPForwarding configures whether ip forwarding will be enabled for containers in the CNI configuration. Default: Disabled","type":"string","enum":["Enabled","Disabled"]},"hostPorts":{"description":"HostPorts configures whether or not Calico will support Kubernetes HostPorts. Valid only when using the Calico CNI plugin. Default: Enabled","type":"string","enum":["Enabled","Disabled"]},"ipPools":{"description":"IPPools contains a list of IP pools to create if none exist. At most one IP pool of each address family may be specified. If omitted, a single pool will be configured if needed.","type":"array","items":{"type":"object","required":["cidr"],"properties":{"blockSize":{"description":"BlockSize specifies the CIDR prefex length to use when allocating per-node IP blocks from the main IP pool CIDR. Default: 26 (IPv4), 122 (IPv6)","type":"integer","format":"int32"},"cidr":{"description":"CIDR contains the address range for the IP Pool in classless inter-domain routing format.","type":"string"},"disableBGPExport":{"description":"DisableBGPExport specifies whether routes from this IP pool's CIDR are exported over BGP. Default: false","type":"boolean","default":false},"encapsulation":{"description":"Encapsulation specifies the encapsulation type that will be used with the IP Pool. Default: IPIP","type":"string","enum":["IPIPCrossSubnet","IPIP","VXLAN","VXLANCrossSubnet","None"]},"natOutgoing":{"description":"NATOutgoing specifies if NAT will be enabled or disabled for outgoing traffic. Default: Enabled","type":"string","enum":["Enabled","Disabled"]},"nodeSelector":{"description":"NodeSelector specifies the node selector that will be set for the IP Pool. Default: 'all()'","type":"string"}}}},"linuxDataplane":{"description":"LinuxDataplane is used to select the dataplane used for Linux nodes. In particular, it causes the operator to add required mounts and environment variables for the particular dataplane. If not specified, iptables mode is used. Default: Iptables","type":"string","enum":["Iptables","BPF","VPP"]},"mtu":{"description":"MTU specifies the maximum transmission unit to use on the pod network. If not specified, Calico will perform MTU auto-detection based on the cluster network.","type":"integer","format":"int32"},"multiInterfaceMode":{"description":"MultiInterfaceMode configures what will configure multiple interface per pod. Only valid for Calico Enterprise installations using the Calico CNI plugin. Default: None","type":"string","enum":["None","Multus"]},"nodeAddressAutodetectionV4":{"description":"NodeAddressAutodetectionV4 specifies an approach to automatically detect node IPv4 addresses. If not specified, will use default auto-detection settings to acquire an IPv4 address for each node.","type":"object","properties":{"canReach":{"description":"CanReach enables IP auto-detection based on which source address on the node is used to reach the specified IP or domain.","type":"string"},"cidrs":{"description":"CIDRS enables IP auto-detection based on which addresses on the nodes are within one of the provided CIDRs.","type":"array","items":{"type":"string"}},"firstFound":{"description":"FirstFound uses default interface matching parameters to select an interface, performing best-effort filtering based on well-known interface names.","type":"boolean"},"interface":{"description":"Interface enables IP auto-detection based on interfaces that match the given regex.","type":"string"},"kubernetes":{"description":"Kubernetes configures Calico to detect node addresses based on the Kubernetes API.","type":"string","enum":["NodeInternalIP"]},"skipInterface":{"description":"SkipInterface enables IP auto-detection based on interfaces that do not match the given regex.","type":"string"}}},"nodeAddressAutodetectionV6":{"description":"NodeAddressAutodetectionV6 specifies an approach to automatically detect node IPv6 addresses. If not specified, IPv6 addresses will not be auto-detected.","type":"object","properties":{"canReach":{"description":"CanReach enables IP auto-detection based on which source address on the node is used to reach the specified IP or domain.","type":"string"},"cidrs":{"description":"CIDRS enables IP auto-detection based on which addresses on the nodes are within one of the provided CIDRs.","type":"array","items":{"type":"string"}},"firstFound":{"description":"FirstFound uses default interface matching parameters to select an interface, performing best-effort filtering based on well-known interface names.","type":"boolean"},"interface":{"description":"Interface enables IP auto-detection based on interfaces that match the given regex.","type":"string"},"kubernetes":{"description":"Kubernetes configures Calico to detect node addresses based on the Kubernetes API.","type":"string","enum":["NodeInternalIP"]},"skipInterface":{"description":"SkipInterface enables IP auto-detection based on interfaces that do not match the given regex.","type":"string"}}}}},"calicoNodeDaemonSet":{"description":"CalicoNodeDaemonSet configures the calico-node DaemonSet. If used in conjunction with the deprecated ComponentResources, then these overrides take precedence.","type":"object","properties":{"metadata":{"description":"Metadata is a subset of a Kubernetes object's metadata that is added to the DaemonSet.","type":"object","properties":{"annotations":{"description":"Annotations is a map of arbitrary non-identifying metadata. Each of these key/value pairs are added to the object's annotations provided the key does not already exist in the object's annotations.","type":"object","additionalProperties":{"type":"string"}},"labels":{"description":"Labels is a map of string keys and values that may match replicaset and service selectors. Each of these key/value pairs are added to the object's labels provided the key does not already exist in the object's labels.","type":"object","additionalProperties":{"type":"string"}}}},"spec":{"description":"Spec is the specification of the calico-node DaemonSet.","type":"object","properties":{"minReadySeconds":{"description":"MinReadySeconds is the minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. If specified, this overrides any minReadySeconds value that may be set on the calico-node DaemonSet. If omitted, the calico-node DaemonSet will use its default value for minReadySeconds.","type":"integer","format":"int32","maximum":2147483647,"minimum":0},"template":{"description":"Template describes the calico-node DaemonSet pod that will be created.","type":"object","properties":{"metadata":{"description":"Metadata is a subset of a Kubernetes object's metadata that is added to the pod's metadata.","type":"object","properties":{"annotations":{"description":"Annotations is a map of arbitrary non-identifying metadata. Each of these key/value pairs are added to the object's annotations provided the key does not already exist in the object's annotations.","type":"object","additionalProperties":{"type":"string"}},"labels":{"description":"Labels is a map of string keys and values that may match replicaset and service selectors. Each of these key/value pairs are added to the object's labels provided the key does not already exist in the object's labels.","type":"object","additionalProperties":{"type":"string"}}}},"spec":{"description":"Spec is the calico-node DaemonSet's PodSpec.","type":"object","properties":{"affinity":{"description":"Affinity is a group of affinity scheduling rules for the calico-node pods. If specified, this overrides any affinity that may be set on the calico-node DaemonSet. If omitted, the calico-node DaemonSet will use its default value for affinity. WARNING: Please note that this field will override the default calico-node DaemonSet affinity.","type":"object","properties":{"nodeAffinity":{"description":"Describes node affinity scheduling rules for the pod.","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"An empty preferred scheduling term matches all objects with implicit weight 0 (i.e. it's a no-op). A null preferred scheduling term matches no objects (i.e. is also a no-op).","type":"object","required":["preference","weight"],"properties":{"preference":{"description":"A node selector term, associated with the corresponding weight.","type":"object","properties":{"matchExpressions":{"description":"A list of node selector requirements by node's labels.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchFields":{"description":"A list of node selector requirements by node's fields.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}}},"x-kubernetes-map-type":"atomic"},"weight":{"description":"Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to an update), the system may or may not try to eventually evict the pod from its node.","type":"object","required":["nodeSelectorTerms"],"properties":{"nodeSelectorTerms":{"description":"Required. A list of node selector terms. The terms are ORed.","type":"array","items":{"description":"A null or empty node selector term matches no objects. The requirements of them are ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.","type":"object","properties":{"matchExpressions":{"description":"A list of node selector requirements by node's labels.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchFields":{"description":"A list of node selector requirements by node's fields.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}}},"x-kubernetes-map-type":"atomic"}}},"x-kubernetes-map-type":"atomic"}}},"podAffinity":{"description":"Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)","type":"object","required":["podAffinityTerm","weight"],"properties":{"podAffinityTerm":{"description":"Required. A pod affinity term, associated with the corresponding weight.","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}},"weight":{"description":"weight associated with matching the corresponding podAffinityTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.","type":"array","items":{"description":"Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key \u003ctopologyKey\u003e matches that of any node on which a pod of the set of pods is running","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}}}}},"podAntiAffinity":{"description":"Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling anti-affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)","type":"object","required":["podAffinityTerm","weight"],"properties":{"podAffinityTerm":{"description":"Required. A pod affinity term, associated with the corresponding weight.","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}},"weight":{"description":"weight associated with matching the corresponding podAffinityTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the anti-affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the anti-affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.","type":"array","items":{"description":"Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key \u003ctopologyKey\u003e matches that of any node on which a pod of the set of pods is running","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}}}}}}},"containers":{"description":"Containers is a list of calico-node containers. If specified, this overrides the specified calico-node DaemonSet containers. If omitted, the calico-node DaemonSet will use its default values for its containers.","type":"array","items":{"description":"CalicoNodeDaemonSetContainer is a calico-node DaemonSet container.","type":"object","required":["name"],"properties":{"name":{"description":"Name is an enum which identifies the calico-node DaemonSet container by name.","type":"string","enum":["calico-node"]},"resources":{"description":"Resources allows customization of limits and requests for compute resources such as cpu and memory. If specified, this overrides the named calico-node DaemonSet container's resources. If omitted, the calico-node DaemonSet will use its default value for this container's resources. If used in conjunction with the deprecated ComponentResources, then this value takes precedence.","type":"object","properties":{"limits":{"description":"Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"requests":{"description":"Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}}}}}}},"initContainers":{"description":"InitContainers is a list of calico-node init containers. If specified, this overrides the specified calico-node DaemonSet init containers. If omitted, the calico-node DaemonSet will use its default values for its init containers.","type":"array","items":{"description":"CalicoNodeDaemonSetInitContainer is a calico-node DaemonSet init container.","type":"object","required":["name"],"properties":{"name":{"description":"Name is an enum which identifies the calico-node DaemonSet init container by name.","type":"string","enum":["install-cni","hostpath-init","flexvol-driver","mount-bpffs","node-certs-key-cert-provisioner","calico-node-prometheus-server-tls-key-cert-provisioner"]},"resources":{"description":"Resources allows customization of limits and requests for compute resources such as cpu and memory. If specified, this overrides the named calico-node DaemonSet init container's resources. If omitted, the calico-node DaemonSet will use its default value for this container's resources. If used in conjunction with the deprecated ComponentResources, then this value takes precedence.","type":"object","properties":{"limits":{"description":"Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"requests":{"description":"Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}}}}}}},"nodeSelector":{"description":"NodeSelector is the calico-node pod's scheduling constraints. If specified, each of the key/value pairs are added to the calico-node DaemonSet nodeSelector provided the key does not already exist in the object's nodeSelector. If omitted, the calico-node DaemonSet will use its default value for nodeSelector. WARNING: Please note that this field will modify the default calico-node DaemonSet nodeSelector.","type":"object","additionalProperties":{"type":"string"}},"tolerations":{"description":"Tolerations is the calico-node pod's tolerations. If specified, this overrides any tolerations that may be set on the calico-node DaemonSet. If omitted, the calico-node DaemonSet will use its default value for tolerations. WARNING: Please note that this field will override the default calico-node DaemonSet tolerations.","type":"array","items":{"description":"The pod this Toleration is attached to tolerates any taint that matches the triple \u003ckey,value,effect\u003e using the matching operator \u003coperator\u003e.","type":"object","properties":{"effect":{"description":"Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute.","type":"string"},"key":{"description":"Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.","type":"string"},"operator":{"description":"Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category.","type":"string"},"tolerationSeconds":{"description":"TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system.","type":"integer","format":"int64"},"value":{"description":"Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string.","type":"string"}}}}}}}}}}}},"calicoWindowsUpgradeDaemonSet":{"description":"CalicoWindowsUpgradeDaemonSet configures the calico-windows-upgrade DaemonSet.","type":"object","properties":{"metadata":{"description":"Metadata is a subset of a Kubernetes object's metadata that is added to the Deployment.","type":"object","properties":{"annotations":{"description":"Annotations is a map of arbitrary non-identifying metadata. Each of these key/value pairs are added to the object's annotations provided the key does not already exist in the object's annotations.","type":"object","additionalProperties":{"type":"string"}},"labels":{"description":"Labels is a map of string keys and values that may match replicaset and service selectors. Each of these key/value pairs are added to the object's labels provided the key does not already exist in the object's labels.","type":"object","additionalProperties":{"type":"string"}}}},"spec":{"description":"Spec is the specification of the calico-windows-upgrade DaemonSet.","type":"object","properties":{"minReadySeconds":{"description":"MinReadySeconds is the minimum number of seconds for which a newly created Deployment pod should be ready without any of its container crashing, for it to be considered available. If specified, this overrides any minReadySeconds value that may be set on the calico-windows-upgrade DaemonSet. If omitted, the calico-windows-upgrade DaemonSet will use its default value for minReadySeconds.","type":"integer","format":"int32","maximum":2147483647,"minimum":0},"template":{"description":"Template describes the calico-windows-upgrade DaemonSet pod that will be created.","type":"object","properties":{"metadata":{"description":"Metadata is a subset of a Kubernetes object's metadata that is added to the pod's metadata.","type":"object","properties":{"annotations":{"description":"Annotations is a map of arbitrary non-identifying metadata. Each of these key/value pairs are added to the object's annotations provided the key does not already exist in the object's annotations.","type":"object","additionalProperties":{"type":"string"}},"labels":{"description":"Labels is a map of string keys and values that may match replicaset and service selectors. Each of these key/value pairs are added to the object's labels provided the key does not already exist in the object's labels.","type":"object","additionalProperties":{"type":"string"}}}},"spec":{"description":"Spec is the calico-windows-upgrade DaemonSet's PodSpec.","type":"object","properties":{"affinity":{"description":"Affinity is a group of affinity scheduling rules for the calico-windows-upgrade pods. If specified, this overrides any affinity that may be set on the calico-windows-upgrade DaemonSet. If omitted, the calico-windows-upgrade DaemonSet will use its default value for affinity. WARNING: Please note that this field will override the default calico-windows-upgrade DaemonSet affinity.","type":"object","properties":{"nodeAffinity":{"description":"Describes node affinity scheduling rules for the pod.","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"An empty preferred scheduling term matches all objects with implicit weight 0 (i.e. it's a no-op). A null preferred scheduling term matches no objects (i.e. is also a no-op).","type":"object","required":["preference","weight"],"properties":{"preference":{"description":"A node selector term, associated with the corresponding weight.","type":"object","properties":{"matchExpressions":{"description":"A list of node selector requirements by node's labels.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchFields":{"description":"A list of node selector requirements by node's fields.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}}},"x-kubernetes-map-type":"atomic"},"weight":{"description":"Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to an update), the system may or may not try to eventually evict the pod from its node.","type":"object","required":["nodeSelectorTerms"],"properties":{"nodeSelectorTerms":{"description":"Required. A list of node selector terms. The terms are ORed.","type":"array","items":{"description":"A null or empty node selector term matches no objects. The requirements of them are ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.","type":"object","properties":{"matchExpressions":{"description":"A list of node selector requirements by node's labels.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchFields":{"description":"A list of node selector requirements by node's fields.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}}},"x-kubernetes-map-type":"atomic"}}},"x-kubernetes-map-type":"atomic"}}},"podAffinity":{"description":"Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)","type":"object","required":["podAffinityTerm","weight"],"properties":{"podAffinityTerm":{"description":"Required. A pod affinity term, associated with the corresponding weight.","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}},"weight":{"description":"weight associated with matching the corresponding podAffinityTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.","type":"array","items":{"description":"Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key \u003ctopologyKey\u003e matches that of any node on which a pod of the set of pods is running","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}}}}},"podAntiAffinity":{"description":"Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling anti-affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)","type":"object","required":["podAffinityTerm","weight"],"properties":{"podAffinityTerm":{"description":"Required. A pod affinity term, associated with the corresponding weight.","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}},"weight":{"description":"weight associated with matching the corresponding podAffinityTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the anti-affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the anti-affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.","type":"array","items":{"description":"Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key \u003ctopologyKey\u003e matches that of any node on which a pod of the set of pods is running","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}}}}}}},"containers":{"description":"Containers is a list of calico-windows-upgrade containers. If specified, this overrides the specified calico-windows-upgrade DaemonSet containers. If omitted, the calico-windows-upgrade DaemonSet will use its default values for its containers.","type":"array","items":{"description":"CalicoWindowsUpgradeDaemonSetContainer is a calico-windows-upgrade DaemonSet container.","type":"object","required":["name"],"properties":{"name":{"description":"Name is an enum which identifies the calico-windows-upgrade DaemonSet container by name.","type":"string","enum":["calico-windows-upgrade"]},"resources":{"description":"Resources allows customization of limits and requests for compute resources such as cpu and memory. If specified, this overrides the named calico-windows-upgrade DaemonSet container's resources. If omitted, the calico-windows-upgrade DaemonSet will use its default value for this container's resources.","type":"object","properties":{"limits":{"description":"Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"requests":{"description":"Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}}}}}}},"nodeSelector":{"description":"NodeSelector is the calico-windows-upgrade pod's scheduling constraints. If specified, each of the key/value pairs are added to the calico-windows-upgrade DaemonSet nodeSelector provided the key does not already exist in the object's nodeSelector. If omitted, the calico-windows-upgrade DaemonSet will use its default value for nodeSelector. WARNING: Please note that this field will modify the default calico-windows-upgrade DaemonSet nodeSelector.","type":"object","additionalProperties":{"type":"string"}},"tolerations":{"description":"Tolerations is the calico-windows-upgrade pod's tolerations. If specified, this overrides any tolerations that may be set on the calico-windows-upgrade DaemonSet. If omitted, the calico-windows-upgrade DaemonSet will use its default value for tolerations. WARNING: Please note that this field will override the default calico-windows-upgrade DaemonSet tolerations.","type":"array","items":{"description":"The pod this Toleration is attached to tolerates any taint that matches the triple \u003ckey,value,effect\u003e using the matching operator \u003coperator\u003e.","type":"object","properties":{"effect":{"description":"Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute.","type":"string"},"key":{"description":"Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.","type":"string"},"operator":{"description":"Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category.","type":"string"},"tolerationSeconds":{"description":"TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system.","type":"integer","format":"int64"},"value":{"description":"Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string.","type":"string"}}}}}}}}}}}},"certificateManagement":{"description":"CertificateManagement configures pods to submit a CertificateSigningRequest to the certificates.k8s.io/v1beta1 API in order to obtain TLS certificates. This feature requires that you bring your own CSR signing and approval process, otherwise pods will be stuck during initialization.","type":"object","required":["caCert","signerName"],"properties":{"caCert":{"description":"Certificate of the authority that signs the CertificateSigningRequests in PEM format.","type":"string","format":"byte"},"keyAlgorithm":{"description":"Specify the algorithm used by pods to generate a key pair that is associated with the X.509 certificate request. Default: RSAWithSize2048","type":"string","enum":["","RSAWithSize2048","RSAWithSize4096","RSAWithSize8192","ECDSAWithCurve256","ECDSAWithCurve384","ECDSAWithCurve521"]},"signatureAlgorithm":{"description":"Specify the algorithm used for the signature of the X.509 certificate request. Default: SHA256WithRSA","type":"string","enum":["","SHA256WithRSA","SHA384WithRSA","SHA512WithRSA","ECDSAWithSHA256","ECDSAWithSHA384","ECDSAWithSHA512"]},"signerName":{"description":"When a CSR is issued to the certificates.k8s.io API, the signerName is added to the request in order to accommodate for clusters with multiple signers. Must be formatted as: `\u003cmy-domain\u003e/\u003cmy-signername\u003e`.","type":"string"}}},"cni":{"description":"CNI specifies the CNI that will be used by this installation.","type":"object","required":["type"],"properties":{"ipam":{"description":"IPAM specifies the pod IP address management that will be used in the Calico or Calico Enterprise installation.","type":"object","required":["type"],"properties":{"type":{"description":"Specifies the IPAM plugin that will be used in the Calico or Calico Enterprise installation. * For CNI Plugin Calico, this field defaults to Calico. * For CNI Plugin GKE, this field defaults to HostLocal. * For CNI Plugin AzureVNET, this field defaults to AzureVNET. * For CNI Plugin AmazonVPC, this field defaults to AmazonVPC. \n The IPAM plugin is installed and configured only if the CNI plugin is set to Calico, for all other values of the CNI plugin the plugin binaries and CNI config is a dependency that is expected to be installed separately. \n Default: Calico","type":"string","enum":["Calico","HostLocal","AmazonVPC","AzureVNET"]}}},"type":{"description":"Specifies the CNI plugin that will be used in the Calico or Calico Enterprise installation. * For KubernetesProvider GKE, this field defaults to GKE. * For KubernetesProvider AKS, this field defaults to AzureVNET. * For KubernetesProvider EKS, this field defaults to AmazonVPC. * If aws-node daemonset exists in kube-system when the Installation resource is created, this field defaults to AmazonVPC. * For all other cases this field defaults to Calico. \n For the value Calico, the CNI plugin binaries and CNI config will be installed as part of deployment, for all other values the CNI plugin binaries and CNI config is a dependency that is expected to be installed separately. \n Default: Calico","type":"string","enum":["Calico","GKE","AmazonVPC","AzureVNET"]}}},"componentResources":{"description":"Deprecated. Please use CalicoNodeDaemonSet, TyphaDeployment, and KubeControllersDeployment. ComponentResources can be used to customize the resource requirements for each component. Node, Typha, and KubeControllers are supported for installations.","type":"array","items":{"description":"Deprecated. Please use component resource config fields in Installation.Spec instead. The ComponentResource struct associates a ResourceRequirements with a component by name","type":"object","required":["componentName","resourceRequirements"],"properties":{"componentName":{"description":"ComponentName is an enum which identifies the component","type":"string","enum":["Node","Typha","KubeControllers"]},"resourceRequirements":{"description":"ResourceRequirements allows customization of limits and requests for compute resources such as cpu and memory.","type":"object","properties":{"limits":{"description":"Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"requests":{"description":"Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}}}}}}},"controlPlaneNodeSelector":{"description":"ControlPlaneNodeSelector is used to select control plane nodes on which to run Calico components. This is globally applied to all resources created by the operator excluding daemonsets.","type":"object","additionalProperties":{"type":"string"}},"controlPlaneReplicas":{"description":"ControlPlaneReplicas defines how many replicas of the control plane core components will be deployed. This field applies to all control plane components that support High Availability. Defaults to 2.","type":"integer","format":"int32"},"controlPlaneTolerations":{"description":"ControlPlaneTolerations specify tolerations which are then globally applied to all resources created by the operator.","type":"array","items":{"description":"The pod this Toleration is attached to tolerates any taint that matches the triple \u003ckey,value,effect\u003e using the matching operator \u003coperator\u003e.","type":"object","properties":{"effect":{"description":"Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute.","type":"string"},"key":{"description":"Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.","type":"string"},"operator":{"description":"Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category.","type":"string"},"tolerationSeconds":{"description":"TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system.","type":"integer","format":"int64"},"value":{"description":"Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string.","type":"string"}}}},"csiNodeDriverDaemonSet":{"description":"CSINodeDriverDaemonSet configures the csi-node-driver DaemonSet.","type":"object","properties":{"metadata":{"description":"Metadata is a subset of a Kubernetes object's metadata that is added to the DaemonSet.","type":"object","properties":{"annotations":{"description":"Annotations is a map of arbitrary non-identifying metadata. Each of these key/value pairs are added to the object's annotations provided the key does not already exist in the object's annotations.","type":"object","additionalProperties":{"type":"string"}},"labels":{"description":"Labels is a map of string keys and values that may match replicaset and service selectors. Each of these key/value pairs are added to the object's labels provided the key does not already exist in the object's labels.","type":"object","additionalProperties":{"type":"string"}}}},"spec":{"description":"Spec is the specification of the csi-node-driver DaemonSet.","type":"object","properties":{"minReadySeconds":{"description":"MinReadySeconds is the minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. If specified, this overrides any minReadySeconds value that may be set on the csi-node-driver DaemonSet. If omitted, the csi-node-driver DaemonSet will use its default value for minReadySeconds.","type":"integer","format":"int32","maximum":2147483647,"minimum":0},"template":{"description":"Template describes the csi-node-driver DaemonSet pod that will be created.","type":"object","properties":{"metadata":{"description":"Metadata is a subset of a Kubernetes object's metadata that is added to the pod's metadata.","type":"object","properties":{"annotations":{"description":"Annotations is a map of arbitrary non-identifying metadata. Each of these key/value pairs are added to the object's annotations provided the key does not already exist in the object's annotations.","type":"object","additionalProperties":{"type":"string"}},"labels":{"description":"Labels is a map of string keys and values that may match replicaset and service selectors. Each of these key/value pairs are added to the object's labels provided the key does not already exist in the object's labels.","type":"object","additionalProperties":{"type":"string"}}}},"spec":{"description":"Spec is the csi-node-driver DaemonSet's PodSpec.","type":"object","properties":{"affinity":{"description":"Affinity is a group of affinity scheduling rules for the csi-node-driver pods. If specified, this overrides any affinity that may be set on the csi-node-driver DaemonSet. If omitted, the csi-node-driver DaemonSet will use its default value for affinity. WARNING: Please note that this field will override the default csi-node-driver DaemonSet affinity.","type":"object","properties":{"nodeAffinity":{"description":"Describes node affinity scheduling rules for the pod.","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"An empty preferred scheduling term matches all objects with implicit weight 0 (i.e. it's a no-op). A null preferred scheduling term matches no objects (i.e. is also a no-op).","type":"object","required":["preference","weight"],"properties":{"preference":{"description":"A node selector term, associated with the corresponding weight.","type":"object","properties":{"matchExpressions":{"description":"A list of node selector requirements by node's labels.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchFields":{"description":"A list of node selector requirements by node's fields.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}}},"x-kubernetes-map-type":"atomic"},"weight":{"description":"Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to an update), the system may or may not try to eventually evict the pod from its node.","type":"object","required":["nodeSelectorTerms"],"properties":{"nodeSelectorTerms":{"description":"Required. A list of node selector terms. The terms are ORed.","type":"array","items":{"description":"A null or empty node selector term matches no objects. The requirements of them are ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.","type":"object","properties":{"matchExpressions":{"description":"A list of node selector requirements by node's labels.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchFields":{"description":"A list of node selector requirements by node's fields.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}}},"x-kubernetes-map-type":"atomic"}}},"x-kubernetes-map-type":"atomic"}}},"podAffinity":{"description":"Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)","type":"object","required":["podAffinityTerm","weight"],"properties":{"podAffinityTerm":{"description":"Required. A pod affinity term, associated with the corresponding weight.","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}},"weight":{"description":"weight associated with matching the corresponding podAffinityTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.","type":"array","items":{"description":"Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key \u003ctopologyKey\u003e matches that of any node on which a pod of the set of pods is running","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}}}}},"podAntiAffinity":{"description":"Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling anti-affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)","type":"object","required":["podAffinityTerm","weight"],"properties":{"podAffinityTerm":{"description":"Required. A pod affinity term, associated with the corresponding weight.","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}},"weight":{"description":"weight associated with matching the corresponding podAffinityTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the anti-affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the anti-affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.","type":"array","items":{"description":"Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key \u003ctopologyKey\u003e matches that of any node on which a pod of the set of pods is running","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}}}}}}},"containers":{"description":"Containers is a list of csi-node-driver containers. If specified, this overrides the specified csi-node-driver DaemonSet containers. If omitted, the csi-node-driver DaemonSet will use its default values for its containers.","type":"array","items":{"description":"CSINodeDriverDaemonSetContainer is a csi-node-driver DaemonSet container.","type":"object","required":["name"],"properties":{"name":{"description":"Name is an enum which identifies the csi-node-driver DaemonSet container by name.","type":"string","enum":["csi-node-driver"]},"resources":{"description":"Resources allows customization of limits and requests for compute resources such as cpu and memory. If specified, this overrides the named csi-node-driver DaemonSet container's resources. If omitted, the csi-node-driver DaemonSet will use its default value for this container's resources.","type":"object","properties":{"limits":{"description":"Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"requests":{"description":"Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}}}}}}},"nodeSelector":{"description":"NodeSelector is the csi-node-driver pod's scheduling constraints. If specified, each of the key/value pairs are added to the csi-node-driver DaemonSet nodeSelector provided the key does not already exist in the object's nodeSelector. If omitted, the csi-node-driver DaemonSet will use its default value for nodeSelector. WARNING: Please note that this field will modify the default csi-node-driver DaemonSet nodeSelector.","type":"object","additionalProperties":{"type":"string"}},"tolerations":{"description":"Tolerations is the csi-node-driver pod's tolerations. If specified, this overrides any tolerations that may be set on the csi-node-driver DaemonSet. If omitted, the csi-node-driver DaemonSet will use its default value for tolerations. WARNING: Please note that this field will override the default csi-node-driver DaemonSet tolerations.","type":"array","items":{"description":"The pod this Toleration is attached to tolerates any taint that matches the triple \u003ckey,value,effect\u003e using the matching operator \u003coperator\u003e.","type":"object","properties":{"effect":{"description":"Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute.","type":"string"},"key":{"description":"Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.","type":"string"},"operator":{"description":"Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category.","type":"string"},"tolerationSeconds":{"description":"TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system.","type":"integer","format":"int64"},"value":{"description":"Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string.","type":"string"}}}}}}}}}}}},"fipsMode":{"description":"FIPSMode uses images and features only that are using FIPS 140-2 validated cryptographic modules and standards. Default: Disabled","type":"string","enum":["Enabled","Disabled"]},"flexVolumePath":{"description":"FlexVolumePath optionally specifies a custom path for FlexVolume. If not specified, FlexVolume will be enabled by default. If set to 'None', FlexVolume will be disabled. The default is based on the kubernetesProvider.","type":"string"},"imagePath":{"description":"ImagePath allows for the path part of an image to be specified. If specified then the specified value will be used as the image path for each image. If not specified or empty, the default for each image will be used. A special case value, UseDefault, is supported to explicitly specify the default image path will be used for each image. \n Image format: `\u003cregistry\u003e\u003cimagePath\u003e/\u003cimagePrefix\u003e\u003cimageName\u003e:\u003cimage-tag\u003e` \n This option allows configuring the `\u003cimagePath\u003e` portion of the above format.","type":"string"},"imagePrefix":{"description":"ImagePrefix allows for the prefix part of an image to be specified. If specified then the given value will be used as a prefix on each image. If not specified or empty, no prefix will be used. A special case value, UseDefault, is supported to explicitly specify the default image prefix will be used for each image. \n Image format: `\u003cregistry\u003e\u003cimagePath\u003e/\u003cimagePrefix\u003e\u003cimageName\u003e:\u003cimage-tag\u003e` \n This option allows configuring the `\u003cimagePrefix\u003e` portion of the above format.","type":"string"},"imagePullSecrets":{"description":"ImagePullSecrets is an array of references to container registry pull secrets to use. These are applied to all images to be pulled.","type":"array","items":{"description":"LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.","type":"object","properties":{"name":{"description":"Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?","type":"string"}},"x-kubernetes-map-type":"atomic"}},"kubeletVolumePluginPath":{"description":"KubeletVolumePluginPath optionally specifies enablement of Calico CSI plugin. If not specified, CSI will be enabled by default. If set to 'None', CSI will be disabled. Default: /var/lib/kubelet","type":"string"},"kubernetesProvider":{"description":"KubernetesProvider specifies a particular provider of the Kubernetes platform and enables provider-specific configuration. If the specified value is empty, the Operator will attempt to automatically determine the current provider. If the specified value is not empty, the Operator will still attempt auto-detection, but will additionally compare the auto-detected value to the specified value to confirm they match.","type":"string","enum":["","EKS","GKE","AKS","OpenShift","DockerEnterprise","RKE2"]},"logging":{"description":"Logging Configuration for Components","type":"object","properties":{"cni":{"description":"Customized logging specification for calico-cni plugin","type":"object","properties":{"logFileMaxAgeDays":{"description":"Default: 30 (days)","type":"integer","format":"int32"},"logFileMaxCount":{"description":"Default: 10","type":"integer","format":"int32"},"logFileMaxSize":{"description":"Default: 100Mi","pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true},"logSeverity":{"description":"Default: Info","type":"string","enum":["Error","Warning","Debug","Info"]}}}}},"nodeMetricsPort":{"description":"NodeMetricsPort specifies which port calico/node serves prometheus metrics on. By default, metrics are not enabled. If specified, this overrides any FelixConfiguration resources which may exist. If omitted, then prometheus metrics may still be configured through FelixConfiguration.","type":"integer","format":"int32"},"nodeUpdateStrategy":{"description":"NodeUpdateStrategy can be used to customize the desired update strategy, such as the MaxUnavailable field.","type":"object","properties":{"rollingUpdate":{"description":"Rolling update config params. Present only if type = \"RollingUpdate\". --- TODO: Update this to follow our convention for oneOf, whatever we decide it to be. Same as Deployment `strategy.rollingUpdate`. See https://github.com/kubernetes/kubernetes/issues/35345","type":"object","properties":{"maxSurge":{"description":"The maximum number of nodes with an existing available DaemonSet pod that can have an updated DaemonSet pod during during an update. Value can be an absolute number (ex: 5) or a percentage of desired pods (ex: 10%). This can not be 0 if MaxUnavailable is 0. Absolute number is calculated from percentage by rounding up to a minimum of 1. Default value is 0. Example: when this is set to 30%, at most 30% of the total number of nodes that should be running the daemon pod (i.e. status.desiredNumberScheduled) can have their a new pod created before the old pod is marked as deleted. The update starts by launching new pods on 30% of nodes. Once an updated pod is available (Ready for at least minReadySeconds) the old DaemonSet pod on that node is marked deleted. If the old pod becomes unavailable for any reason (Ready transitions to false, is evicted, or is drained) an updated pod is immediatedly created on that node without considering surge limits. Allowing surge implies the possibility that the resources consumed by the daemonset on any given node can double if the readiness check fails, and so resource intensive daemonsets should take into account that they may cause evictions during disruption.","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true},"maxUnavailable":{"description":"The maximum number of DaemonSet pods that can be unavailable during the update. Value can be an absolute number (ex: 5) or a percentage of total number of DaemonSet pods at the start of the update (ex: 10%). Absolute number is calculated from percentage by rounding up. This cannot be 0 if MaxSurge is 0 Default value is 1. Example: when this is set to 30%, at most 30% of the total number of nodes that should be running the daemon pod (i.e. status.desiredNumberScheduled) can have their pods stopped for an update at any given time. The update starts by stopping at most 30% of those DaemonSet pods and then brings up new DaemonSet pods in their place. Once the new pods are available, it then proceeds onto other DaemonSet pods, thus ensuring that at least 70% of original number of DaemonSet pods are available at all times during the update.","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}}},"type":{"description":"Type of daemon set update. Can be \"RollingUpdate\" or \"OnDelete\". Default is RollingUpdate.","type":"string"}}},"nonPrivileged":{"description":"NonPrivileged configures Calico to be run in non-privileged containers as non-root users where possible.","type":"string"},"registry":{"description":"Registry is the default Docker registry used for component Docker images. If specified then the given value must end with a slash character (`/`) and all images will be pulled from this registry. If not specified then the default registries will be used. A special case value, UseDefault, is supported to explicitly specify the default registries will be used. \n Image format: `\u003cregistry\u003e\u003cimagePath\u003e/\u003cimagePrefix\u003e\u003cimageName\u003e:\u003cimage-tag\u003e` \n This option allows configuring the `\u003cregistry\u003e` portion of the above format.","type":"string"},"typhaAffinity":{"description":"Deprecated. Please use Installation.Spec.TyphaDeployment instead. TyphaAffinity allows configuration of node affinity characteristics for Typha pods.","type":"object","properties":{"nodeAffinity":{"description":"NodeAffinity describes node affinity scheduling rules for typha.","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions.","type":"array","items":{"description":"An empty preferred scheduling term matches all objects with implicit weight 0 (i.e. it's a no-op). A null preferred scheduling term matches no objects (i.e. is also a no-op).","type":"object","required":["preference","weight"],"properties":{"preference":{"description":"A node selector term, associated with the corresponding weight.","type":"object","properties":{"matchExpressions":{"description":"A list of node selector requirements by node's labels.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchFields":{"description":"A list of node selector requirements by node's fields.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}}},"x-kubernetes-map-type":"atomic"},"weight":{"description":"Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"WARNING: Please note that if the affinity requirements specified by this field are not met at scheduling time, the pod will NOT be scheduled onto the node. There is no fallback to another affinity rules with this setting. This may cause networking disruption or even catastrophic failure! PreferredDuringSchedulingIgnoredDuringExecution should be used for affinity unless there is a specific well understood reason to use RequiredDuringSchedulingIgnoredDuringExecution and you can guarantee that the RequiredDuringSchedulingIgnoredDuringExecution will always have sufficient nodes to satisfy the requirement. NOTE: RequiredDuringSchedulingIgnoredDuringExecution is set by default for AKS nodes, to avoid scheduling Typhas on virtual-nodes. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to an update), the system may or may not try to eventually evict the pod from its node.","type":"object","required":["nodeSelectorTerms"],"properties":{"nodeSelectorTerms":{"description":"Required. A list of node selector terms. The terms are ORed.","type":"array","items":{"description":"A null or empty node selector term matches no objects. The requirements of them are ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.","type":"object","properties":{"matchExpressions":{"description":"A list of node selector requirements by node's labels.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchFields":{"description":"A list of node selector requirements by node's fields.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}}},"x-kubernetes-map-type":"atomic"}}},"x-kubernetes-map-type":"atomic"}}}}},"typhaDeployment":{"description":"TyphaDeployment configures the typha Deployment. If used in conjunction with the deprecated ComponentResources or TyphaAffinity, then these overrides take precedence.","type":"object","properties":{"metadata":{"description":"Metadata is a subset of a Kubernetes object's metadata that is added to the Deployment.","type":"object","properties":{"annotations":{"description":"Annotations is a map of arbitrary non-identifying metadata. Each of these key/value pairs are added to the object's annotations provided the key does not already exist in the object's annotations.","type":"object","additionalProperties":{"type":"string"}},"labels":{"description":"Labels is a map of string keys and values that may match replicaset and service selectors. Each of these key/value pairs are added to the object's labels provided the key does not already exist in the object's labels.","type":"object","additionalProperties":{"type":"string"}}}},"spec":{"description":"Spec is the specification of the typha Deployment.","type":"object","properties":{"minReadySeconds":{"description":"MinReadySeconds is the minimum number of seconds for which a newly created Deployment pod should be ready without any of its container crashing, for it to be considered available. If specified, this overrides any minReadySeconds value that may be set on the typha Deployment. If omitted, the typha Deployment will use its default value for minReadySeconds.","type":"integer","format":"int32","maximum":2147483647,"minimum":0},"strategy":{"description":"The deployment strategy to use to replace existing pods with new ones.","type":"object","properties":{"rollingUpdate":{"description":"Rolling update config params. Present only if DeploymentStrategyType = RollingUpdate. to be.","type":"object","properties":{"maxSurge":{"description":"The maximum number of pods that can be scheduled above the desired number of pods. Value can be an absolute number (ex: 5) or a percentage of desired pods (ex: 10%). This can not be 0 if MaxUnavailable is 0. Absolute number is calculated from percentage by rounding up. Defaults to 25%. Example: when this is set to 30%, the new ReplicaSet can be scaled up immediately when the rolling update starts, such that the total number of old and new pods do not exceed 130% of desired pods. Once old pods have been killed, new ReplicaSet can be scaled up further, ensuring that total number of pods running at any time during the update is at most 130% of desired pods.","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true},"maxUnavailable":{"description":"The maximum number of pods that can be unavailable during the update. Value can be an absolute number (ex: 5) or a percentage of desired pods (ex: 10%). Absolute number is calculated from percentage by rounding down. This can not be 0 if MaxSurge is 0. Defaults to 25%. Example: when this is set to 30%, the old ReplicaSet can be scaled down to 70% of desired pods immediately when the rolling update starts. Once new pods are ready, old ReplicaSet can be scaled down further, followed by scaling up the new ReplicaSet, ensuring that the total number of pods available at all times during the update is at least 70% of desired pods.","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}}}}},"template":{"description":"Template describes the typha Deployment pod that will be created.","type":"object","properties":{"metadata":{"description":"Metadata is a subset of a Kubernetes object's metadata that is added to the pod's metadata.","type":"object","properties":{"annotations":{"description":"Annotations is a map of arbitrary non-identifying metadata. Each of these key/value pairs are added to the object's annotations provided the key does not already exist in the object's annotations.","type":"object","additionalProperties":{"type":"string"}},"labels":{"description":"Labels is a map of string keys and values that may match replicaset and service selectors. Each of these key/value pairs are added to the object's labels provided the key does not already exist in the object's labels.","type":"object","additionalProperties":{"type":"string"}}}},"spec":{"description":"Spec is the typha Deployment's PodSpec.","type":"object","properties":{"affinity":{"description":"Affinity is a group of affinity scheduling rules for the typha pods. If specified, this overrides any affinity that may be set on the typha Deployment. If omitted, the typha Deployment will use its default value for affinity. If used in conjunction with the deprecated TyphaAffinity, then this value takes precedence. WARNING: Please note that this field will override the default calico-typha Deployment affinity.","type":"object","properties":{"nodeAffinity":{"description":"Describes node affinity scheduling rules for the pod.","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"An empty preferred scheduling term matches all objects with implicit weight 0 (i.e. it's a no-op). A null preferred scheduling term matches no objects (i.e. is also a no-op).","type":"object","required":["preference","weight"],"properties":{"preference":{"description":"A node selector term, associated with the corresponding weight.","type":"object","properties":{"matchExpressions":{"description":"A list of node selector requirements by node's labels.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchFields":{"description":"A list of node selector requirements by node's fields.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}}},"x-kubernetes-map-type":"atomic"},"weight":{"description":"Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to an update), the system may or may not try to eventually evict the pod from its node.","type":"object","required":["nodeSelectorTerms"],"properties":{"nodeSelectorTerms":{"description":"Required. A list of node selector terms. The terms are ORed.","type":"array","items":{"description":"A null or empty node selector term matches no objects. The requirements of them are ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.","type":"object","properties":{"matchExpressions":{"description":"A list of node selector requirements by node's labels.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchFields":{"description":"A list of node selector requirements by node's fields.","type":"array","items":{"description":"A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"The label key that the selector applies to.","type":"string"},"operator":{"description":"Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.","type":"string"},"values":{"description":"An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}}},"x-kubernetes-map-type":"atomic"}}},"x-kubernetes-map-type":"atomic"}}},"podAffinity":{"description":"Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)","type":"object","required":["podAffinityTerm","weight"],"properties":{"podAffinityTerm":{"description":"Required. A pod affinity term, associated with the corresponding weight.","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}},"weight":{"description":"weight associated with matching the corresponding podAffinityTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.","type":"array","items":{"description":"Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key \u003ctopologyKey\u003e matches that of any node on which a pod of the set of pods is running","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}}}}},"podAntiAffinity":{"description":"Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).","type":"object","properties":{"preferredDuringSchedulingIgnoredDuringExecution":{"description":"The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling anti-affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.","type":"array","items":{"description":"The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)","type":"object","required":["podAffinityTerm","weight"],"properties":{"podAffinityTerm":{"description":"Required. A pod affinity term, associated with the corresponding weight.","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}},"weight":{"description":"weight associated with matching the corresponding podAffinityTerm, in the range 1-100.","type":"integer","format":"int32"}}}},"requiredDuringSchedulingIgnoredDuringExecution":{"description":"If the anti-affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the anti-affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.","type":"array","items":{"description":"Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key \u003ctopologyKey\u003e matches that of any node on which a pod of the set of pods is running","type":"object","required":["topologyKey"],"properties":{"labelSelector":{"description":"A label query over a set of resources, in this case pods.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaceSelector":{"description":"A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"namespaces":{"description":"namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".","type":"array","items":{"type":"string"}},"topologyKey":{"description":"This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.","type":"string"}}}}}}}},"containers":{"description":"Containers is a list of typha containers. If specified, this overrides the specified typha Deployment containers. If omitted, the typha Deployment will use its default values for its containers.","type":"array","items":{"description":"TyphaDeploymentContainer is a typha Deployment container.","type":"object","required":["name"],"properties":{"name":{"description":"Name is an enum which identifies the typha Deployment container by name.","type":"string","enum":["calico-typha"]},"resources":{"description":"Resources allows customization of limits and requests for compute resources such as cpu and memory. If specified, this overrides the named typha Deployment container's resources. If omitted, the typha Deployment will use its default value for this container's resources. If used in conjunction with the deprecated ComponentResources, then this value takes precedence.","type":"object","properties":{"limits":{"description":"Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"requests":{"description":"Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}}}}}}},"initContainers":{"description":"InitContainers is a list of typha init containers. If specified, this overrides the specified typha Deployment init containers. If omitted, the typha Deployment will use its default values for its init containers.","type":"array","items":{"description":"TyphaDeploymentInitContainer is a typha Deployment init container.","type":"object","required":["name"],"properties":{"name":{"description":"Name is an enum which identifies the typha Deployment init container by name.","type":"string","enum":["typha-certs-key-cert-provisioner"]},"resources":{"description":"Resources allows customization of limits and requests for compute resources such as cpu and memory. If specified, this overrides the named typha Deployment init container's resources. If omitted, the typha Deployment will use its default value for this init container's resources. If used in conjunction with the deprecated ComponentResources, then this value takes precedence.","type":"object","properties":{"limits":{"description":"Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"requests":{"description":"Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/","type":"object","additionalProperties":{"pattern":"^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}}}}}}},"nodeSelector":{"description":"NodeSelector is the calico-typha pod's scheduling constraints. If specified, each of the key/value pairs are added to the calico-typha Deployment nodeSelector provided the key does not already exist in the object's nodeSelector. If omitted, the calico-typha Deployment will use its default value for nodeSelector. WARNING: Please note that this field will modify the default calico-typha Deployment nodeSelector.","type":"object","additionalProperties":{"type":"string"}},"terminationGracePeriodSeconds":{"description":"Optional duration in seconds the pod needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.","type":"integer","format":"int64"},"tolerations":{"description":"Tolerations is the typha pod's tolerations. If specified, this overrides any tolerations that may be set on the typha Deployment. If omitted, the typha Deployment will use its default value for tolerations. WARNING: Please note that this field will override the default calico-typha Deployment tolerations.","type":"array","items":{"description":"The pod this Toleration is attached to tolerates any taint that matches the triple \u003ckey,value,effect\u003e using the matching operator \u003coperator\u003e.","type":"object","properties":{"effect":{"description":"Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute.","type":"string"},"key":{"description":"Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.","type":"string"},"operator":{"description":"Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category.","type":"string"},"tolerationSeconds":{"description":"TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system.","type":"integer","format":"int64"},"value":{"description":"Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string.","type":"string"}}}},"topologySpreadConstraints":{"description":"TopologySpreadConstraints describes how a group of pods ought to spread across topology domains. Scheduler will schedule pods in a way which abides by the constraints. All topologySpreadConstraints are ANDed.","type":"array","items":{"description":"TopologySpreadConstraint specifies how to spread matching pods among the given topology.","type":"object","required":["maxSkew","topologyKey","whenUnsatisfiable"],"properties":{"labelSelector":{"description":"LabelSelector is used to find matching pods. Pods that match this label selector are counted to determine the number of pods in their corresponding topology domain.","type":"object","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","type":"array","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","type":"object","required":["key","operator"],"properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","type":"array","items":{"type":"string"}}}}},"matchLabels":{"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object","additionalProperties":{"type":"string"}}},"x-kubernetes-map-type":"atomic"},"matchLabelKeys":{"description":"MatchLabelKeys is a set of pod label keys to select the pods over which spreading will be calculated. The keys are used to lookup values from the incoming pod labels, those key-value labels are ANDed with labelSelector to select the group of existing pods over which spreading will be calculated for the incoming pod. Keys that don't exist in the incoming pod labels will be ignored. A null or empty list means only match against labelSelector.","type":"array","items":{"type":"string"},"x-kubernetes-list-type":"atomic"},"maxSkew":{"description":"MaxSkew describes the degree to which pods may be unevenly distributed. When `whenUnsatisfiable=DoNotSchedule`, it is the maximum permitted difference between the number of matching pods in the target topology and the global minimum. The global minimum is the minimum number of matching pods in an eligible domain or zero if the number of eligible domains is less than MinDomains. For example, in a 3-zone cluster, MaxSkew is set to 1, and pods with the same labelSelector spread as 2/2/1: In this case, the global minimum is 1. | zone1 | zone2 | zone3 | |  P P  |  P P  |   P   | - if MaxSkew is 1, incoming pod can only be scheduled to zone3 to become 2/2/2; scheduling it onto zone1(zone2) would make the ActualSkew(3-1) on zone1(zone2) violate MaxSkew(1). - if MaxSkew is 2, incoming pod can be scheduled onto any zone. When `whenUnsatisfiable=ScheduleAnyway`, it is used to give higher precedence to topologies that satisfy it. It's a required field. Default value is 1 and 0 is not allowed.","type":"integer","format":"int32"},"minDomains":{"description":"MinDomains indicates a minimum number of eligible domains. When the number of eligible domains with matching topology keys is less than minDomains, Pod Topology Spread treats \"global minimum\" as 0, and then the calculation of Skew is performed. And when the number of eligible domains with matching topology keys equals or greater than minDomains, this value has no effect on scheduling. As a result, when the number of eligible domains is less than minDomains, scheduler won't schedule more than maxSkew Pods to those domains. If value is nil, the constraint behaves as if MinDomains is equal to 1. Valid values are integers greater than 0. When value is not nil, WhenUnsatisfiable must be DoNotSchedule. \n For example, in a 3-zone cluster, MaxSkew is set to 2, MinDomains is set to 5 and pods with the same labelSelector spread as 2/2/2: | zone1 | zone2 | zone3 | |  P P  |  P P  |  P P  | The number of domains is less than 5(MinDomains), so \"global minimum\" is treated as 0. In this situation, new pod with the same labelSelector cannot be scheduled, because computed skew will be 3(3 - 0) if new Pod is scheduled to any of the three zones, it will violate MaxSkew. \n This is a beta field and requires the MinDomainsInPodTopologySpread feature gate to be enabled (enabled by default).","type":"integer","format":"int32"},"nodeAffinityPolicy":{"description":"NodeAffinityPolicy indicates how we will treat Pod's nodeAffinity/nodeSelector when calculating pod topology spread skew. Options are: - Honor: only nodes matching nodeAffinity/nodeSelector are included in the calculations. - Ignore: nodeAffinity/nodeSelector are ignored. All nodes are included in the calculations. \n If this value is nil, the behavior is equivalent to the Honor policy. This is a alpha-level feature enabled by the NodeInclusionPolicyInPodTopologySpread feature flag.","type":"string"},"nodeTaintsPolicy":{"description":"NodeTaintsPolicy indicates how we will treat node taints when calculating pod topology spread skew. Options are: - Honor: nodes without taints, along with tainted nodes for which the incoming pod has a toleration, are included. - Ignore: node taints are ignored. All nodes are included. \n If this value is nil, the behavior is equivalent to the Ignore policy. This is a alpha-level feature enabled by the NodeInclusionPolicyInPodTopologySpread feature flag.","type":"string"},"topologyKey":{"description":"TopologyKey is the key of node labels. Nodes that have a label with this key and identical values are considered to be in the same topology. We consider each \u003ckey, value\u003e as a \"bucket\", and try to put balanced number of pods into each bucket. We define a domain as a particular instance of a topology. Also, we define an eligible domain as a domain whose nodes meet the requirements of nodeAffinityPolicy and nodeTaintsPolicy. e.g. If TopologyKey is \"kubernetes.io/hostname\", each Node is a domain of that topology. And, if TopologyKey is \"topology.kubernetes.io/zone\", each zone is a domain of that topology. It's a required field.","type":"string"},"whenUnsatisfiable":{"description":"WhenUnsatisfiable indicates how to deal with a pod if it doesn't satisfy the spread constraint. - DoNotSchedule (default) tells the scheduler not to schedule it. - ScheduleAnyway tells the scheduler to schedule the pod in any location, but giving higher precedence to topologies that would help reduce the skew. A constraint is considered \"Unsatisfiable\" for an incoming pod if and only if every possible node assignment for that pod would violate \"MaxSkew\" on some topology. For example, in a 3-zone cluster, MaxSkew is set to 1, and pods with the same labelSelector spread as 3/1/1: | zone1 | zone2 | zone3 | | P P P |   P   |   P   | If WhenUnsatisfiable is set to DoNotSchedule, incoming pod can only be scheduled to zone2(zone3) to become 3/2/1(3/1/2) as ActualSkew(2-1) on zone2(zone3) satisfies MaxSkew(1). In other words, the cluster can still be imbalanced, but scheduler won't make it *more* imbalanced. It's a required field.","type":"string"}}}}}}}}}}}},"typhaMetricsPort":{"description":"TyphaMetricsPort specifies which port calico/typha serves prometheus metrics on. By default, metrics are not enabled.","type":"integer","format":"int32"},"variant":{"description":"Variant is the product to install - one of Calico or TigeraSecureEnterprise Default: Calico","type":"string","enum":["Calico","TigeraSecureEnterprise"]}}},"conditions":{"description":"Conditions represents the latest observed set of conditions for the component. A component may be one or more of Ready, Progressing, Degraded or other customer types.","type":"array","items":{"description":"Condition contains details for one aspect of the current state of this API Resource. --- This struct is intended for direct use as an array at the field path .status.conditions.  For example, \n type FooStatus struct{ // Represents the observations of a foo's current state. // Known .status.conditions.type are: \"Available\", \"Progressing\", and \"Degraded\" // +patchMergeKey=type // +patchStrategy=merge // +listType=map // +listMapKey=type Conditions []metav1.Condition `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"` \n // other fields }","type":"object","required":["lastTransitionTime","message","reason","status","type"],"properties":{"lastTransitionTime":{"description":"lastTransitionTime is the last time the condition transitioned from one status to another. This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.","type":"string","format":"date-time"},"message":{"description":"message is a human readable message indicating details about the transition. This may be an empty string.","type":"string","maxLength":32768},"observedGeneration":{"description":"observedGeneration represents the .metadata.generation that the condition was set based upon. For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date with respect to the current state of the instance.","type":"integer","format":"int64","minimum":0},"reason":{"description":"reason contains a programmatic identifier indicating the reason for the condition's last transition. Producers of specific condition types may define expected values and meanings for this field, and whether the values are considered a guaranteed API. The value should be a CamelCase string. This field may not be empty.","type":"string","maxLength":1024,"minLength":1,"pattern":"^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$"},"status":{"description":"status of the condition, one of True, False, Unknown.","type":"string","enum":["True","False","Unknown"]},"type":{"description":"type of condition in CamelCase or in foo.example.com/CamelCase. --- Many .condition.type values are consistent across resources like Available, but because arbitrary conditions can be useful (see .node.status.conditions), the ability to deconflict is important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)","type":"string","maxLength":316,"pattern":"^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$"}}}},"imageSet":{"description":"ImageSet is the name of the ImageSet being used, if there is an ImageSet that is being used. If an ImageSet is not being used then this will not be set.","type":"string"},"mtu":{"description":"MTU is the most recently observed value for pod network MTU. This may be an explicitly configured value, or based on Calico's native auto-detetion.","type":"integer","format":"int32"},"variant":{"description":"Variant is the most recently observed installed variant - one of Calico or TigeraSecureEnterprise","type":"string","enum":["Calico","TigeraSecureEnterprise"]}}}}}},"subresources":{"status":{}},"versions":[{"name":"v1","served":true,"storage":true}],"conversion":{"strategy":"None"},"preserveUnknownFields":false},"status":{"conditions":[{"type":"NamesAccepted","status":"True","lastTransitionTime":"2023-11-22T16:51:53Z","reason":"NoConflicts","message":"no conflicts found"},{"type":"Established","status":"True","lastTransitionTime":"2023-11-22T16:51:53Z","reason":"InitialNamesAccepted","message":"the initial names have been accepted"}],"acceptedNames":{"plural":"installations","singular":"installation","kind":"Installation","listKind":"InstallationList"},"storedVersions":["v1"]}}

/registry/apiextensions.k8s.io/customresourcedefinitions/ipamblocks.crd.projectcalico.org
{"kind":"CustomResourceDefinition","apiVersion":"apiextensions.k8s.io/v1beta1","metadata":{"name":"ipamblocks.crd.projectcalico.org","uid":"7bf799bf-88b1-4889-9486-4a73d5a3f74f","generation":1,"creationTimestamp":"2023-11-22T16:51:52Z","managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:status":{"f:acceptedNames":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:conditions":{"k:{\"type\":\"Established\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}},"k:{\"type\":\"NamesAccepted\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}},"subresource":"status"},{"manager":"kubectl-create","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:spec":{"f:conversion":{".":{},"f:strategy":{}},"f:group":{},"f:names":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:scope":{},"f:versions":{}}}}]},"spec":{"group":"crd.projectcalico.org","version":"v1","names":{"plural":"ipamblocks","singular":"ipamblock","kind":"IPAMBlock","listKind":"IPAMBlockList"},"scope":"Cluster","validation":{"openAPIV3Schema":{"type":"object","properties":{"apiVersion":{"description":"APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources","type":"string"},"kind":{"description":"Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds","type":"string"},"metadata":{"type":"object"},"spec":{"description":"IPAMBlockSpec contains the specification for an IPAMBlock resource.","type":"object","required":["allocations","attributes","cidr","strictAffinity","unallocated"],"properties":{"affinity":{"description":"Affinity of the block, if this block has one. If set, it will be of the form \"host:\u003chostname\u003e\". If not set, this block is not affine to a host.","type":"string"},"allocations":{"description":"Array of allocations in-use within this block. nil entries mean the allocation is free. For non-nil entries at index i, the index is the ordinal of the allocation within this block and the value is the index of the associated attributes in the Attributes array.","type":"array","items":{"type":"integer","nullable":true}},"attributes":{"description":"Attributes is an array of arbitrary metadata associated with allocations in the block. To find attributes for a given allocation, use the value of the allocation's entry in the Allocations array as the index of the element in this array.","type":"array","items":{"type":"object","properties":{"handle_id":{"type":"string"},"secondary":{"type":"object","additionalProperties":{"type":"string"}}}}},"cidr":{"description":"The block's CIDR.","type":"string"},"deleted":{"description":"Deleted is an internal boolean used to workaround a limitation in the Kubernetes API whereby deletion will not return a conflict error if the block has been updated. It should not be set manually.","type":"boolean"},"sequenceNumber":{"description":"We store a sequence number that is updated each time the block is written. Each allocation will also store the sequence number of the block at the time of its creation. When releasing an IP, passing the sequence number associated with the allocation allows us to protect against a race condition and ensure the IP hasn't been released and re-allocated since the release request.","type":"integer","format":"int64","default":0},"sequenceNumberForAllocation":{"description":"Map of allocated ordinal within the block to sequence number of the block at the time of allocation. Kubernetes does not allow numerical keys for maps, so the key is cast to a string.","type":"object","additionalProperties":{"type":"integer","format":"int64"}},"strictAffinity":{"description":"StrictAffinity on the IPAMBlock is deprecated and no longer used by the code. Use IPAMConfig StrictAffinity instead.","type":"boolean"},"unallocated":{"description":"Unallocated is an ordered list of allocations which are free in the block.","type":"array","items":{"type":"integer"}}}}}}},"versions":[{"name":"v1","served":true,"storage":true}],"conversion":{"strategy":"None"},"preserveUnknownFields":false},"status":{"conditions":[{"type":"NamesAccepted","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"NoConflicts","message":"no conflicts found"},{"type":"Established","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"InitialNamesAccepted","message":"the initial names have been accepted"}],"acceptedNames":{"plural":"ipamblocks","singular":"ipamblock","kind":"IPAMBlock","listKind":"IPAMBlockList"},"storedVersions":["v1"]}}

/registry/apiextensions.k8s.io/customresourcedefinitions/ipamconfigs.crd.projectcalico.org
{"kind":"CustomResourceDefinition","apiVersion":"apiextensions.k8s.io/v1beta1","metadata":{"name":"ipamconfigs.crd.projectcalico.org","uid":"d4c4ed70-3302-4e14-b876-7992d06b997f","generation":1,"creationTimestamp":"2023-11-22T16:51:52Z","managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:status":{"f:acceptedNames":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:conditions":{"k:{\"type\":\"Established\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}},"k:{\"type\":\"NamesAccepted\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}},"subresource":"status"},{"manager":"kubectl-create","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:spec":{"f:conversion":{".":{},"f:strategy":{}},"f:group":{},"f:names":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:scope":{},"f:versions":{}}}}]},"spec":{"group":"crd.projectcalico.org","version":"v1","names":{"plural":"ipamconfigs","singular":"ipamconfig","kind":"IPAMConfig","listKind":"IPAMConfigList"},"scope":"Cluster","validation":{"openAPIV3Schema":{"type":"object","properties":{"apiVersion":{"description":"APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources","type":"string"},"kind":{"description":"Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds","type":"string"},"metadata":{"type":"object"},"spec":{"description":"IPAMConfigSpec contains the specification for an IPAMConfig resource.","type":"object","required":["autoAllocateBlocks","strictAffinity"],"properties":{"autoAllocateBlocks":{"type":"boolean"},"maxBlocksPerHost":{"description":"MaxBlocksPerHost, if non-zero, is the max number of blocks that can be affine to each host.","type":"integer","maximum":2147483647,"minimum":0},"strictAffinity":{"type":"boolean"}}}}}},"versions":[{"name":"v1","served":true,"storage":true}],"conversion":{"strategy":"None"},"preserveUnknownFields":false},"status":{"conditions":[{"type":"NamesAccepted","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"NoConflicts","message":"no conflicts found"},{"type":"Established","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"InitialNamesAccepted","message":"the initial names have been accepted"}],"acceptedNames":{"plural":"ipamconfigs","singular":"ipamconfig","kind":"IPAMConfig","listKind":"IPAMConfigList"},"storedVersions":["v1"]}}

/registry/apiextensions.k8s.io/customresourcedefinitions/ipamhandles.crd.projectcalico.org
{"kind":"CustomResourceDefinition","apiVersion":"apiextensions.k8s.io/v1beta1","metadata":{"name":"ipamhandles.crd.projectcalico.org","uid":"0633672d-f125-466b-8c89-9d8b7ffbde15","generation":1,"creationTimestamp":"2023-11-22T16:51:52Z","managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:status":{"f:acceptedNames":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:conditions":{"k:{\"type\":\"Established\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}},"k:{\"type\":\"NamesAccepted\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}},"subresource":"status"},{"manager":"kubectl-create","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:spec":{"f:conversion":{".":{},"f:strategy":{}},"f:group":{},"f:names":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:scope":{},"f:versions":{}}}}]},"spec":{"group":"crd.projectcalico.org","version":"v1","names":{"plural":"ipamhandles","singular":"ipamhandle","kind":"IPAMHandle","listKind":"IPAMHandleList"},"scope":"Cluster","validation":{"openAPIV3Schema":{"type":"object","properties":{"apiVersion":{"description":"APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources","type":"string"},"kind":{"description":"Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds","type":"string"},"metadata":{"type":"object"},"spec":{"description":"IPAMHandleSpec contains the specification for an IPAMHandle resource.","type":"object","required":["block","handleID"],"properties":{"block":{"type":"object","additionalProperties":{"type":"integer"}},"deleted":{"type":"boolean"},"handleID":{"type":"string"}}}}}},"versions":[{"name":"v1","served":true,"storage":true}],"conversion":{"strategy":"None"},"preserveUnknownFields":false},"status":{"conditions":[{"type":"NamesAccepted","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"NoConflicts","message":"no conflicts found"},{"type":"Established","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"InitialNamesAccepted","message":"the initial names have been accepted"}],"acceptedNames":{"plural":"ipamhandles","singular":"ipamhandle","kind":"IPAMHandle","listKind":"IPAMHandleList"},"storedVersions":["v1"]}}

/registry/apiextensions.k8s.io/customresourcedefinitions/ippools.crd.projectcalico.org
{"kind":"CustomResourceDefinition","apiVersion":"apiextensions.k8s.io/v1beta1","metadata":{"name":"ippools.crd.projectcalico.org","uid":"897874a7-1155-4f91-bed9-2503be799082","generation":1,"creationTimestamp":"2023-11-22T16:51:52Z","managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:status":{"f:acceptedNames":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:conditions":{"k:{\"type\":\"Established\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}},"k:{\"type\":\"NamesAccepted\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}},"subresource":"status"},{"manager":"kubectl-create","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:spec":{"f:conversion":{".":{},"f:strategy":{}},"f:group":{},"f:names":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:scope":{},"f:versions":{}}}}]},"spec":{"group":"crd.projectcalico.org","version":"v1","names":{"plural":"ippools","singular":"ippool","kind":"IPPool","listKind":"IPPoolList"},"scope":"Cluster","validation":{"openAPIV3Schema":{"type":"object","properties":{"apiVersion":{"description":"APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources","type":"string"},"kind":{"description":"Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds","type":"string"},"metadata":{"type":"object"},"spec":{"description":"IPPoolSpec contains the specification for an IPPool resource.","type":"object","required":["cidr"],"properties":{"allowedUses":{"description":"AllowedUse controls what the IP pool will be used for.  If not specified or empty, defaults to [\"Tunnel\", \"Workload\"] for back-compatibility","type":"array","items":{"type":"string"}},"blockSize":{"description":"The block size to use for IP address assignments from this pool. Defaults to 26 for IPv4 and 122 for IPv6.","type":"integer"},"cidr":{"description":"The pool CIDR.","type":"string"},"disableBGPExport":{"description":"Disable exporting routes from this IP Pool's CIDR over BGP. [Default: false]","type":"boolean"},"disabled":{"description":"When disabled is true, Calico IPAM will not assign addresses from this pool.","type":"boolean"},"ipip":{"description":"Deprecated: this field is only used for APIv1 backwards compatibility. Setting this field is not allowed, this field is for internal use only.","type":"object","properties":{"enabled":{"description":"When enabled is true, ipip tunneling will be used to deliver packets to destinations within this pool.","type":"boolean"},"mode":{"description":"The IPIP mode.  This can be one of \"always\" or \"cross-subnet\".  A mode of \"always\" will also use IPIP tunneling for routing to destination IP addresses within this pool.  A mode of \"cross-subnet\" will only use IPIP tunneling when the destination node is on a different subnet to the originating node.  The default value (if not specified) is \"always\".","type":"string"}}},"ipipMode":{"description":"Contains configuration for IPIP tunneling for this pool. If not specified, then this is defaulted to \"Never\" (i.e. IPIP tunneling is disabled).","type":"string"},"nat-outgoing":{"description":"Deprecated: this field is only used for APIv1 backwards compatibility. Setting this field is not allowed, this field is for internal use only.","type":"boolean"},"natOutgoing":{"description":"When natOutgoing is true, packets sent from Calico networked containers in this pool to destinations outside of this pool will be masqueraded.","type":"boolean"},"nodeSelector":{"description":"Allows IPPool to allocate for a specific node by label selector.","type":"string"},"vxlanMode":{"description":"Contains configuration for VXLAN tunneling for this pool. If not specified, then this is defaulted to \"Never\" (i.e. VXLAN tunneling is disabled).","type":"string"}}}}}},"versions":[{"name":"v1","served":true,"storage":true}],"conversion":{"strategy":"None"},"preserveUnknownFields":false},"status":{"conditions":[{"type":"NamesAccepted","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"NoConflicts","message":"no conflicts found"},{"type":"Established","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"InitialNamesAccepted","message":"the initial names have been accepted"}],"acceptedNames":{"plural":"ippools","singular":"ippool","kind":"IPPool","listKind":"IPPoolList"},"storedVersions":["v1"]}}

/registry/apiextensions.k8s.io/customresourcedefinitions/ipreservations.crd.projectcalico.org
{"kind":"CustomResourceDefinition","apiVersion":"apiextensions.k8s.io/v1beta1","metadata":{"name":"ipreservations.crd.projectcalico.org","uid":"2422d049-ea62-4704-9cbc-f1817478b07c","generation":1,"creationTimestamp":"2023-11-22T16:51:52Z","annotations":{"controller-gen.kubebuilder.io/version":"(devel)"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:status":{"f:acceptedNames":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:conditions":{"k:{\"type\":\"Established\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}},"k:{\"type\":\"NamesAccepted\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}},"subresource":"status"},{"manager":"kubectl-create","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:annotations":{".":{},"f:controller-gen.kubebuilder.io/version":{}}},"f:spec":{"f:conversion":{".":{},"f:strategy":{}},"f:group":{},"f:names":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:scope":{},"f:versions":{}}}}]},"spec":{"group":"crd.projectcalico.org","version":"v1","names":{"plural":"ipreservations","singular":"ipreservation","kind":"IPReservation","listKind":"IPReservationList"},"scope":"Cluster","validation":{"openAPIV3Schema":{"type":"object","properties":{"apiVersion":{"description":"APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources","type":"string"},"kind":{"description":"Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds","type":"string"},"metadata":{"type":"object"},"spec":{"description":"IPReservationSpec contains the specification for an IPReservation resource.","type":"object","properties":{"reservedCIDRs":{"description":"ReservedCIDRs is a list of CIDRs and/or IP addresses that Calico IPAM will exclude from new allocations.","type":"array","items":{"type":"string"}}}}}}},"versions":[{"name":"v1","served":true,"storage":true}],"conversion":{"strategy":"None"},"preserveUnknownFields":false},"status":{"conditions":[{"type":"NamesAccepted","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"NoConflicts","message":"no conflicts found"},{"type":"Established","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"InitialNamesAccepted","message":"the initial names have been accepted"}],"acceptedNames":{"plural":"ipreservations","singular":"ipreservation","kind":"IPReservation","listKind":"IPReservationList"},"storedVersions":["v1"]}}

/registry/apiextensions.k8s.io/customresourcedefinitions/kubecontrollersconfigurations.crd.projectcalico.org
{"kind":"CustomResourceDefinition","apiVersion":"apiextensions.k8s.io/v1beta1","metadata":{"name":"kubecontrollersconfigurations.crd.projectcalico.org","uid":"89191700-2c21-4964-8c4f-b64f4fcfaaaf","generation":1,"creationTimestamp":"2023-11-22T16:51:52Z","managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:status":{"f:acceptedNames":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:conditions":{"k:{\"type\":\"Established\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}},"k:{\"type\":\"NamesAccepted\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}},"subresource":"status"},{"manager":"kubectl-create","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:spec":{"f:conversion":{".":{},"f:strategy":{}},"f:group":{},"f:names":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:scope":{},"f:versions":{}}}}]},"spec":{"group":"crd.projectcalico.org","version":"v1","names":{"plural":"kubecontrollersconfigurations","singular":"kubecontrollersconfiguration","kind":"KubeControllersConfiguration","listKind":"KubeControllersConfigurationList"},"scope":"Cluster","validation":{"openAPIV3Schema":{"type":"object","properties":{"apiVersion":{"description":"APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources","type":"string"},"kind":{"description":"Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds","type":"string"},"metadata":{"type":"object"},"spec":{"description":"KubeControllersConfigurationSpec contains the values of the Kubernetes controllers configuration.","type":"object","required":["controllers"],"properties":{"controllers":{"description":"Controllers enables and configures individual Kubernetes controllers","type":"object","properties":{"namespace":{"description":"Namespace enables and configures the namespace controller. Enabled by default, set to nil to disable.","type":"object","properties":{"reconcilerPeriod":{"description":"ReconcilerPeriod is the period to perform reconciliation with the Calico datastore. [Default: 5m]","type":"string"}}},"node":{"description":"Node enables and configures the node controller. Enabled by default, set to nil to disable.","type":"object","properties":{"hostEndpoint":{"description":"HostEndpoint controls syncing nodes to host endpoints. Disabled by default, set to nil to disable.","type":"object","properties":{"autoCreate":{"description":"AutoCreate enables automatic creation of host endpoints for every node. [Default: Disabled]","type":"string"}}},"leakGracePeriod":{"description":"LeakGracePeriod is the period used by the controller to determine if an IP address has been leaked. Set to 0 to disable IP garbage collection. [Default: 15m]","type":"string"},"reconcilerPeriod":{"description":"ReconcilerPeriod is the period to perform reconciliation with the Calico datastore. [Default: 5m]","type":"string"},"syncLabels":{"description":"SyncLabels controls whether to copy Kubernetes node labels to Calico nodes. [Default: Enabled]","type":"string"}}},"policy":{"description":"Policy enables and configures the policy controller. Enabled by default, set to nil to disable.","type":"object","properties":{"reconcilerPeriod":{"description":"ReconcilerPeriod is the period to perform reconciliation with the Calico datastore. [Default: 5m]","type":"string"}}},"serviceAccount":{"description":"ServiceAccount enables and configures the service account controller. Enabled by default, set to nil to disable.","type":"object","properties":{"reconcilerPeriod":{"description":"ReconcilerPeriod is the period to perform reconciliation with the Calico datastore. [Default: 5m]","type":"string"}}},"workloadEndpoint":{"description":"WorkloadEndpoint enables and configures the workload endpoint controller. Enabled by default, set to nil to disable.","type":"object","properties":{"reconcilerPeriod":{"description":"ReconcilerPeriod is the period to perform reconciliation with the Calico datastore. [Default: 5m]","type":"string"}}}}},"debugProfilePort":{"description":"DebugProfilePort configures the port to serve memory and cpu profiles on. If not specified, profiling is disabled.","type":"integer","format":"int32"},"etcdV3CompactionPeriod":{"description":"EtcdV3CompactionPeriod is the period between etcdv3 compaction requests. Set to 0 to disable. [Default: 10m]","type":"string"},"healthChecks":{"description":"HealthChecks enables or disables support for health checks [Default: Enabled]","type":"string"},"logSeverityScreen":{"description":"LogSeverityScreen is the log severity above which logs are sent to the stdout. [Default: Info]","type":"string"},"prometheusMetricsPort":{"description":"PrometheusMetricsPort is the TCP port that the Prometheus metrics server should bind to. Set to 0 to disable. [Default: 9094]","type":"integer"}}},"status":{"description":"KubeControllersConfigurationStatus represents the status of the configuration. It's useful for admins to be able to see the actual config that was applied, which can be modified by environment variables on the kube-controllers process.","type":"object","properties":{"environmentVars":{"description":"EnvironmentVars contains the environment variables on the kube-controllers that influenced the RunningConfig.","type":"object","additionalProperties":{"type":"string"}},"runningConfig":{"description":"RunningConfig contains the effective config that is running in the kube-controllers pod, after merging the API resource with any environment variables.","type":"object","required":["controllers"],"properties":{"controllers":{"description":"Controllers enables and configures individual Kubernetes controllers","type":"object","properties":{"namespace":{"description":"Namespace enables and configures the namespace controller. Enabled by default, set to nil to disable.","type":"object","properties":{"reconcilerPeriod":{"description":"ReconcilerPeriod is the period to perform reconciliation with the Calico datastore. [Default: 5m]","type":"string"}}},"node":{"description":"Node enables and configures the node controller. Enabled by default, set to nil to disable.","type":"object","properties":{"hostEndpoint":{"description":"HostEndpoint controls syncing nodes to host endpoints. Disabled by default, set to nil to disable.","type":"object","properties":{"autoCreate":{"description":"AutoCreate enables automatic creation of host endpoints for every node. [Default: Disabled]","type":"string"}}},"leakGracePeriod":{"description":"LeakGracePeriod is the period used by the controller to determine if an IP address has been leaked. Set to 0 to disable IP garbage collection. [Default: 15m]","type":"string"},"reconcilerPeriod":{"description":"ReconcilerPeriod is the period to perform reconciliation with the Calico datastore. [Default: 5m]","type":"string"},"syncLabels":{"description":"SyncLabels controls whether to copy Kubernetes node labels to Calico nodes. [Default: Enabled]","type":"string"}}},"policy":{"description":"Policy enables and configures the policy controller. Enabled by default, set to nil to disable.","type":"object","properties":{"reconcilerPeriod":{"description":"ReconcilerPeriod is the period to perform reconciliation with the Calico datastore. [Default: 5m]","type":"string"}}},"serviceAccount":{"description":"ServiceAccount enables and configures the service account controller. Enabled by default, set to nil to disable.","type":"object","properties":{"reconcilerPeriod":{"description":"ReconcilerPeriod is the period to perform reconciliation with the Calico datastore. [Default: 5m]","type":"string"}}},"workloadEndpoint":{"description":"WorkloadEndpoint enables and configures the workload endpoint controller. Enabled by default, set to nil to disable.","type":"object","properties":{"reconcilerPeriod":{"description":"ReconcilerPeriod is the period to perform reconciliation with the Calico datastore. [Default: 5m]","type":"string"}}}}},"debugProfilePort":{"description":"DebugProfilePort configures the port to serve memory and cpu profiles on. If not specified, profiling is disabled.","type":"integer","format":"int32"},"etcdV3CompactionPeriod":{"description":"EtcdV3CompactionPeriod is the period between etcdv3 compaction requests. Set to 0 to disable. [Default: 10m]","type":"string"},"healthChecks":{"description":"HealthChecks enables or disables support for health checks [Default: Enabled]","type":"string"},"logSeverityScreen":{"description":"LogSeverityScreen is the log severity above which logs are sent to the stdout. [Default: Info]","type":"string"},"prometheusMetricsPort":{"description":"PrometheusMetricsPort is the TCP port that the Prometheus metrics server should bind to. Set to 0 to disable. [Default: 9094]","type":"integer"}}}}}}}},"versions":[{"name":"v1","served":true,"storage":true}],"conversion":{"strategy":"None"},"preserveUnknownFields":false},"status":{"conditions":[{"type":"NamesAccepted","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"NoConflicts","message":"no conflicts found"},{"type":"Established","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"InitialNamesAccepted","message":"the initial names have been accepted"}],"acceptedNames":{"plural":"kubecontrollersconfigurations","singular":"kubecontrollersconfiguration","kind":"KubeControllersConfiguration","listKind":"KubeControllersConfigurationList"},"storedVersions":["v1"]}}

/registry/apiextensions.k8s.io/customresourcedefinitions/networkpolicies.crd.projectcalico.org
{"kind":"CustomResourceDefinition","apiVersion":"apiextensions.k8s.io/v1beta1","metadata":{"name":"networkpolicies.crd.projectcalico.org","uid":"4f61ac71-369e-43fa-bc5d-11314a3c016c","generation":1,"creationTimestamp":"2023-11-22T16:51:52Z","managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:status":{"f:acceptedNames":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:conditions":{"k:{\"type\":\"Established\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}},"k:{\"type\":\"NamesAccepted\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}},"subresource":"status"},{"manager":"kubectl-create","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:spec":{"f:conversion":{".":{},"f:strategy":{}},"f:group":{},"f:names":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:scope":{},"f:versions":{}}}}]},"spec":{"group":"crd.projectcalico.org","version":"v1","names":{"plural":"networkpolicies","singular":"networkpolicy","kind":"NetworkPolicy","listKind":"NetworkPolicyList"},"scope":"Namespaced","validation":{"openAPIV3Schema":{"type":"object","properties":{"apiVersion":{"description":"APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources","type":"string"},"kind":{"description":"Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds","type":"string"},"metadata":{"type":"object"},"spec":{"type":"object","properties":{"egress":{"description":"The ordered set of egress rules.  Each rule contains a set of packet match criteria and a corresponding action to apply.","type":"array","items":{"description":"A Rule encapsulates a set of match criteria and an action.  Both selector-based security Policy and security Profiles reference rules - separated out as a list of rules for both ingress and egress packet matching. \n Each positive match criteria has a negated version, prefixed with \"Not\". All the match criteria within a rule must be satisfied for a packet to match. A single rule can contain the positive and negative version of a match and both must be satisfied for the rule to match.","type":"object","required":["action"],"properties":{"action":{"type":"string"},"destination":{"description":"Destination contains the match criteria that apply to destination entity.","type":"object","properties":{"namespaceSelector":{"description":"NamespaceSelector is an optional field that contains a selector expression. Only traffic that originates from (or terminates at) endpoints within the selected namespaces will be matched. When both NamespaceSelector and another selector are defined on the same rule, then only workload endpoints that are matched by both selectors will be selected by the rule. \n For NetworkPolicy, an empty NamespaceSelector implies that the Selector is limited to selecting only workload endpoints in the same namespace as the NetworkPolicy. \n For NetworkPolicy, `global()` NamespaceSelector implies that the Selector is limited to selecting only GlobalNetworkSet or HostEndpoint. \n For GlobalNetworkPolicy, an empty NamespaceSelector implies the Selector applies to workload endpoints across all namespaces.","type":"string"},"nets":{"description":"Nets is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) IP addresses in any of the given subnets.","type":"array","items":{"type":"string"}},"notNets":{"description":"NotNets is the negated version of the Nets field.","type":"array","items":{"type":"string"}},"notPorts":{"description":"NotPorts is the negated version of the Ports field. Since only some protocols have ports, if any ports are specified it requires the Protocol match in the Rule to be set to \"TCP\" or \"UDP\".","type":"array","items":{"pattern":"^.*","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"notSelector":{"description":"NotSelector is the negated version of the Selector field.  See Selector field for subtleties with negated selectors.","type":"string"},"ports":{"description":"Ports is an optional field that restricts the rule to only apply to traffic that has a source (destination) port that matches one of these ranges/values. This value is a list of integers or strings that represent ranges of ports. \n Since only some protocols have ports, if any ports are specified it requires the Protocol match in the Rule to be set to \"TCP\" or \"UDP\".","type":"array","items":{"pattern":"^.*","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"selector":{"description":"Selector is an optional field that contains a selector expression (see Policy for sample syntax).  Only traffic that originates from (terminates at) endpoints matching the selector will be matched. \n Note that: in addition to the negated version of the Selector (see NotSelector below), the selector expression syntax itself supports negation.  The two types of negation are subtly different. One negates the set of matched endpoints, the other negates the whole match: \n \tSelector = \"!has(my_label)\" matches packets that are from other Calico-controlled \tendpoints that do not have the label \"my_label\". \n \tNotSelector = \"has(my_label)\" matches packets that are not from Calico-controlled \tendpoints that do have the label \"my_label\". \n The effect is that the latter will accept packets from non-Calico sources whereas the former is limited to packets from Calico-controlled endpoints.","type":"string"},"serviceAccounts":{"description":"ServiceAccounts is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) a pod running as a matching service account.","type":"object","properties":{"names":{"description":"Names is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) a pod running as a service account whose name is in the list.","type":"array","items":{"type":"string"}},"selector":{"description":"Selector is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) a pod running as a service account that matches the given label selector. If both Names and Selector are specified then they are AND'ed.","type":"string"}}},"services":{"description":"Services is an optional field that contains options for matching Kubernetes Services. If specified, only traffic that originates from or terminates at endpoints within the selected service(s) will be matched, and only to/from each endpoint's port. \n Services cannot be specified on the same rule as Selector, NotSelector, NamespaceSelector, Nets, NotNets or ServiceAccounts. \n Ports and NotPorts can only be specified with Services on ingress rules.","type":"object","properties":{"name":{"description":"Name specifies the name of a Kubernetes Service to match.","type":"string"},"namespace":{"description":"Namespace specifies the namespace of the given Service. If left empty, the rule will match within this policy's namespace.","type":"string"}}}}},"http":{"description":"HTTP contains match criteria that apply to HTTP requests.","type":"object","properties":{"methods":{"description":"Methods is an optional field that restricts the rule to apply only to HTTP requests that use one of the listed HTTP Methods (e.g. GET, PUT, etc.) Multiple methods are OR'd together.","type":"array","items":{"type":"string"}},"paths":{"description":"Paths is an optional field that restricts the rule to apply to HTTP requests that use one of the listed HTTP Paths. Multiple paths are OR'd together. e.g: - exact: /foo - prefix: /bar NOTE: Each entry may ONLY specify either a `exact` or a `prefix` match. The validator will check for it.","type":"array","items":{"description":"HTTPPath specifies an HTTP path to match. It may be either of the form: exact: \u003cpath\u003e: which matches the path exactly or prefix: \u003cpath-prefix\u003e: which matches the path prefix","type":"object","properties":{"exact":{"type":"string"},"prefix":{"type":"string"}}}}}},"icmp":{"description":"ICMP is an optional field that restricts the rule to apply to a specific type and code of ICMP traffic.  This should only be specified if the Protocol field is set to \"ICMP\" or \"ICMPv6\".","type":"object","properties":{"code":{"description":"Match on a specific ICMP code.  If specified, the Type value must also be specified. This is a technical limitation imposed by the kernel's iptables firewall, which Calico uses to enforce the rule.","type":"integer"},"type":{"description":"Match on a specific ICMP type.  For example a value of 8 refers to ICMP Echo Request (i.e. pings).","type":"integer"}}},"ipVersion":{"description":"IPVersion is an optional field that restricts the rule to only match a specific IP version.","type":"integer"},"metadata":{"description":"Metadata contains additional information for this rule","type":"object","properties":{"annotations":{"description":"Annotations is a set of key value pairs that give extra information about the rule","type":"object","additionalProperties":{"type":"string"}}}},"notICMP":{"description":"NotICMP is the negated version of the ICMP field.","type":"object","properties":{"code":{"description":"Match on a specific ICMP code.  If specified, the Type value must also be specified. This is a technical limitation imposed by the kernel's iptables firewall, which Calico uses to enforce the rule.","type":"integer"},"type":{"description":"Match on a specific ICMP type.  For example a value of 8 refers to ICMP Echo Request (i.e. pings).","type":"integer"}}},"notProtocol":{"description":"NotProtocol is the negated version of the Protocol field.","pattern":"^.*","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true},"protocol":{"description":"Protocol is an optional field that restricts the rule to only apply to traffic of a specific IP protocol. Required if any of the EntityRules contain Ports (because ports only apply to certain protocols). \n Must be one of these string values: \"TCP\", \"UDP\", \"ICMP\", \"ICMPv6\", \"SCTP\", \"UDPLite\" or an integer in the range 1-255.","pattern":"^.*","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true},"source":{"description":"Source contains the match criteria that apply to source entity.","type":"object","properties":{"namespaceSelector":{"description":"NamespaceSelector is an optional field that contains a selector expression. Only traffic that originates from (or terminates at) endpoints within the selected namespaces will be matched. When both NamespaceSelector and another selector are defined on the same rule, then only workload endpoints that are matched by both selectors will be selected by the rule. \n For NetworkPolicy, an empty NamespaceSelector implies that the Selector is limited to selecting only workload endpoints in the same namespace as the NetworkPolicy. \n For NetworkPolicy, `global()` NamespaceSelector implies that the Selector is limited to selecting only GlobalNetworkSet or HostEndpoint. \n For GlobalNetworkPolicy, an empty NamespaceSelector implies the Selector applies to workload endpoints across all namespaces.","type":"string"},"nets":{"description":"Nets is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) IP addresses in any of the given subnets.","type":"array","items":{"type":"string"}},"notNets":{"description":"NotNets is the negated version of the Nets field.","type":"array","items":{"type":"string"}},"notPorts":{"description":"NotPorts is the negated version of the Ports field. Since only some protocols have ports, if any ports are specified it requires the Protocol match in the Rule to be set to \"TCP\" or \"UDP\".","type":"array","items":{"pattern":"^.*","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"notSelector":{"description":"NotSelector is the negated version of the Selector field.  See Selector field for subtleties with negated selectors.","type":"string"},"ports":{"description":"Ports is an optional field that restricts the rule to only apply to traffic that has a source (destination) port that matches one of these ranges/values. This value is a list of integers or strings that represent ranges of ports. \n Since only some protocols have ports, if any ports are specified it requires the Protocol match in the Rule to be set to \"TCP\" or \"UDP\".","type":"array","items":{"pattern":"^.*","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"selector":{"description":"Selector is an optional field that contains a selector expression (see Policy for sample syntax).  Only traffic that originates from (terminates at) endpoints matching the selector will be matched. \n Note that: in addition to the negated version of the Selector (see NotSelector below), the selector expression syntax itself supports negation.  The two types of negation are subtly different. One negates the set of matched endpoints, the other negates the whole match: \n \tSelector = \"!has(my_label)\" matches packets that are from other Calico-controlled \tendpoints that do not have the label \"my_label\". \n \tNotSelector = \"has(my_label)\" matches packets that are not from Calico-controlled \tendpoints that do have the label \"my_label\". \n The effect is that the latter will accept packets from non-Calico sources whereas the former is limited to packets from Calico-controlled endpoints.","type":"string"},"serviceAccounts":{"description":"ServiceAccounts is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) a pod running as a matching service account.","type":"object","properties":{"names":{"description":"Names is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) a pod running as a service account whose name is in the list.","type":"array","items":{"type":"string"}},"selector":{"description":"Selector is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) a pod running as a service account that matches the given label selector. If both Names and Selector are specified then they are AND'ed.","type":"string"}}},"services":{"description":"Services is an optional field that contains options for matching Kubernetes Services. If specified, only traffic that originates from or terminates at endpoints within the selected service(s) will be matched, and only to/from each endpoint's port. \n Services cannot be specified on the same rule as Selector, NotSelector, NamespaceSelector, Nets, NotNets or ServiceAccounts. \n Ports and NotPorts can only be specified with Services on ingress rules.","type":"object","properties":{"name":{"description":"Name specifies the name of a Kubernetes Service to match.","type":"string"},"namespace":{"description":"Namespace specifies the namespace of the given Service. If left empty, the rule will match within this policy's namespace.","type":"string"}}}}}}}},"ingress":{"description":"The ordered set of ingress rules.  Each rule contains a set of packet match criteria and a corresponding action to apply.","type":"array","items":{"description":"A Rule encapsulates a set of match criteria and an action.  Both selector-based security Policy and security Profiles reference rules - separated out as a list of rules for both ingress and egress packet matching. \n Each positive match criteria has a negated version, prefixed with \"Not\". All the match criteria within a rule must be satisfied for a packet to match. A single rule can contain the positive and negative version of a match and both must be satisfied for the rule to match.","type":"object","required":["action"],"properties":{"action":{"type":"string"},"destination":{"description":"Destination contains the match criteria that apply to destination entity.","type":"object","properties":{"namespaceSelector":{"description":"NamespaceSelector is an optional field that contains a selector expression. Only traffic that originates from (or terminates at) endpoints within the selected namespaces will be matched. When both NamespaceSelector and another selector are defined on the same rule, then only workload endpoints that are matched by both selectors will be selected by the rule. \n For NetworkPolicy, an empty NamespaceSelector implies that the Selector is limited to selecting only workload endpoints in the same namespace as the NetworkPolicy. \n For NetworkPolicy, `global()` NamespaceSelector implies that the Selector is limited to selecting only GlobalNetworkSet or HostEndpoint. \n For GlobalNetworkPolicy, an empty NamespaceSelector implies the Selector applies to workload endpoints across all namespaces.","type":"string"},"nets":{"description":"Nets is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) IP addresses in any of the given subnets.","type":"array","items":{"type":"string"}},"notNets":{"description":"NotNets is the negated version of the Nets field.","type":"array","items":{"type":"string"}},"notPorts":{"description":"NotPorts is the negated version of the Ports field. Since only some protocols have ports, if any ports are specified it requires the Protocol match in the Rule to be set to \"TCP\" or \"UDP\".","type":"array","items":{"pattern":"^.*","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"notSelector":{"description":"NotSelector is the negated version of the Selector field.  See Selector field for subtleties with negated selectors.","type":"string"},"ports":{"description":"Ports is an optional field that restricts the rule to only apply to traffic that has a source (destination) port that matches one of these ranges/values. This value is a list of integers or strings that represent ranges of ports. \n Since only some protocols have ports, if any ports are specified it requires the Protocol match in the Rule to be set to \"TCP\" or \"UDP\".","type":"array","items":{"pattern":"^.*","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"selector":{"description":"Selector is an optional field that contains a selector expression (see Policy for sample syntax).  Only traffic that originates from (terminates at) endpoints matching the selector will be matched. \n Note that: in addition to the negated version of the Selector (see NotSelector below), the selector expression syntax itself supports negation.  The two types of negation are subtly different. One negates the set of matched endpoints, the other negates the whole match: \n \tSelector = \"!has(my_label)\" matches packets that are from other Calico-controlled \tendpoints that do not have the label \"my_label\". \n \tNotSelector = \"has(my_label)\" matches packets that are not from Calico-controlled \tendpoints that do have the label \"my_label\". \n The effect is that the latter will accept packets from non-Calico sources whereas the former is limited to packets from Calico-controlled endpoints.","type":"string"},"serviceAccounts":{"description":"ServiceAccounts is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) a pod running as a matching service account.","type":"object","properties":{"names":{"description":"Names is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) a pod running as a service account whose name is in the list.","type":"array","items":{"type":"string"}},"selector":{"description":"Selector is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) a pod running as a service account that matches the given label selector. If both Names and Selector are specified then they are AND'ed.","type":"string"}}},"services":{"description":"Services is an optional field that contains options for matching Kubernetes Services. If specified, only traffic that originates from or terminates at endpoints within the selected service(s) will be matched, and only to/from each endpoint's port. \n Services cannot be specified on the same rule as Selector, NotSelector, NamespaceSelector, Nets, NotNets or ServiceAccounts. \n Ports and NotPorts can only be specified with Services on ingress rules.","type":"object","properties":{"name":{"description":"Name specifies the name of a Kubernetes Service to match.","type":"string"},"namespace":{"description":"Namespace specifies the namespace of the given Service. If left empty, the rule will match within this policy's namespace.","type":"string"}}}}},"http":{"description":"HTTP contains match criteria that apply to HTTP requests.","type":"object","properties":{"methods":{"description":"Methods is an optional field that restricts the rule to apply only to HTTP requests that use one of the listed HTTP Methods (e.g. GET, PUT, etc.) Multiple methods are OR'd together.","type":"array","items":{"type":"string"}},"paths":{"description":"Paths is an optional field that restricts the rule to apply to HTTP requests that use one of the listed HTTP Paths. Multiple paths are OR'd together. e.g: - exact: /foo - prefix: /bar NOTE: Each entry may ONLY specify either a `exact` or a `prefix` match. The validator will check for it.","type":"array","items":{"description":"HTTPPath specifies an HTTP path to match. It may be either of the form: exact: \u003cpath\u003e: which matches the path exactly or prefix: \u003cpath-prefix\u003e: which matches the path prefix","type":"object","properties":{"exact":{"type":"string"},"prefix":{"type":"string"}}}}}},"icmp":{"description":"ICMP is an optional field that restricts the rule to apply to a specific type and code of ICMP traffic.  This should only be specified if the Protocol field is set to \"ICMP\" or \"ICMPv6\".","type":"object","properties":{"code":{"description":"Match on a specific ICMP code.  If specified, the Type value must also be specified. This is a technical limitation imposed by the kernel's iptables firewall, which Calico uses to enforce the rule.","type":"integer"},"type":{"description":"Match on a specific ICMP type.  For example a value of 8 refers to ICMP Echo Request (i.e. pings).","type":"integer"}}},"ipVersion":{"description":"IPVersion is an optional field that restricts the rule to only match a specific IP version.","type":"integer"},"metadata":{"description":"Metadata contains additional information for this rule","type":"object","properties":{"annotations":{"description":"Annotations is a set of key value pairs that give extra information about the rule","type":"object","additionalProperties":{"type":"string"}}}},"notICMP":{"description":"NotICMP is the negated version of the ICMP field.","type":"object","properties":{"code":{"description":"Match on a specific ICMP code.  If specified, the Type value must also be specified. This is a technical limitation imposed by the kernel's iptables firewall, which Calico uses to enforce the rule.","type":"integer"},"type":{"description":"Match on a specific ICMP type.  For example a value of 8 refers to ICMP Echo Request (i.e. pings).","type":"integer"}}},"notProtocol":{"description":"NotProtocol is the negated version of the Protocol field.","pattern":"^.*","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true},"protocol":{"description":"Protocol is an optional field that restricts the rule to only apply to traffic of a specific IP protocol. Required if any of the EntityRules contain Ports (because ports only apply to certain protocols). \n Must be one of these string values: \"TCP\", \"UDP\", \"ICMP\", \"ICMPv6\", \"SCTP\", \"UDPLite\" or an integer in the range 1-255.","pattern":"^.*","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true},"source":{"description":"Source contains the match criteria that apply to source entity.","type":"object","properties":{"namespaceSelector":{"description":"NamespaceSelector is an optional field that contains a selector expression. Only traffic that originates from (or terminates at) endpoints within the selected namespaces will be matched. When both NamespaceSelector and another selector are defined on the same rule, then only workload endpoints that are matched by both selectors will be selected by the rule. \n For NetworkPolicy, an empty NamespaceSelector implies that the Selector is limited to selecting only workload endpoints in the same namespace as the NetworkPolicy. \n For NetworkPolicy, `global()` NamespaceSelector implies that the Selector is limited to selecting only GlobalNetworkSet or HostEndpoint. \n For GlobalNetworkPolicy, an empty NamespaceSelector implies the Selector applies to workload endpoints across all namespaces.","type":"string"},"nets":{"description":"Nets is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) IP addresses in any of the given subnets.","type":"array","items":{"type":"string"}},"notNets":{"description":"NotNets is the negated version of the Nets field.","type":"array","items":{"type":"string"}},"notPorts":{"description":"NotPorts is the negated version of the Ports field. Since only some protocols have ports, if any ports are specified it requires the Protocol match in the Rule to be set to \"TCP\" or \"UDP\".","type":"array","items":{"pattern":"^.*","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"notSelector":{"description":"NotSelector is the negated version of the Selector field.  See Selector field for subtleties with negated selectors.","type":"string"},"ports":{"description":"Ports is an optional field that restricts the rule to only apply to traffic that has a source (destination) port that matches one of these ranges/values. This value is a list of integers or strings that represent ranges of ports. \n Since only some protocols have ports, if any ports are specified it requires the Protocol match in the Rule to be set to \"TCP\" or \"UDP\".","type":"array","items":{"pattern":"^.*","anyOf":[{"type":"integer"},{"type":"string"}],"x-kubernetes-int-or-string":true}},"selector":{"description":"Selector is an optional field that contains a selector expression (see Policy for sample syntax).  Only traffic that originates from (terminates at) endpoints matching the selector will be matched. \n Note that: in addition to the negated version of the Selector (see NotSelector below), the selector expression syntax itself supports negation.  The two types of negation are subtly different. One negates the set of matched endpoints, the other negates the whole match: \n \tSelector = \"!has(my_label)\" matches packets that are from other Calico-controlled \tendpoints that do not have the label \"my_label\". \n \tNotSelector = \"has(my_label)\" matches packets that are not from Calico-controlled \tendpoints that do have the label \"my_label\". \n The effect is that the latter will accept packets from non-Calico sources whereas the former is limited to packets from Calico-controlled endpoints.","type":"string"},"serviceAccounts":{"description":"ServiceAccounts is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) a pod running as a matching service account.","type":"object","properties":{"names":{"description":"Names is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) a pod running as a service account whose name is in the list.","type":"array","items":{"type":"string"}},"selector":{"description":"Selector is an optional field that restricts the rule to only apply to traffic that originates from (or terminates at) a pod running as a service account that matches the given label selector. If both Names and Selector are specified then they are AND'ed.","type":"string"}}},"services":{"description":"Services is an optional field that contains options for matching Kubernetes Services. If specified, only traffic that originates from or terminates at endpoints within the selected service(s) will be matched, and only to/from each endpoint's port. \n Services cannot be specified on the same rule as Selector, NotSelector, NamespaceSelector, Nets, NotNets or ServiceAccounts. \n Ports and NotPorts can only be specified with Services on ingress rules.","type":"object","properties":{"name":{"description":"Name specifies the name of a Kubernetes Service to match.","type":"string"},"namespace":{"description":"Namespace specifies the namespace of the given Service. If left empty, the rule will match within this policy's namespace.","type":"string"}}}}}}}},"order":{"description":"Order is an optional field that specifies the order in which the policy is applied. Policies with higher \"order\" are applied after those with lower order.  If the order is omitted, it may be considered to be \"infinite\" - i.e. the policy will be applied last.  Policies with identical order will be applied in alphanumerical order based on the Policy \"Name\".","type":"number"},"selector":{"description":"The selector is an expression used to pick pick out the endpoints that the policy should be applied to. \n Selector expressions follow this syntax: \n \tlabel == \"string_literal\"  -\u003e  comparison, e.g. my_label == \"foo bar\" \tlabel != \"string_literal\"   -\u003e  not equal; also matches if label is not present \tlabel in { \"a\", \"b\", \"c\", ... }  -\u003e  true if the value of label X is one of \"a\", \"b\", \"c\" \tlabel not in { \"a\", \"b\", \"c\", ... }  -\u003e  true if the value of label X is not one of \"a\", \"b\", \"c\" \thas(label_name)  -\u003e True if that label is present \t! expr -\u003e negation of expr \texpr \u0026\u0026 expr  -\u003e Short-circuit and \texpr || expr  -\u003e Short-circuit or \t( expr ) -\u003e parens for grouping \tall() or the empty selector -\u003e matches all endpoints. \n Label names are allowed to contain alphanumerics, -, _ and /. String literals are more permissive but they do not support escape characters. \n Examples (with made-up labels): \n \ttype == \"webserver\" \u0026\u0026 deployment == \"prod\" \ttype in {\"frontend\", \"backend\"} \tdeployment != \"dev\" \t! has(label_name)","type":"string"},"serviceAccountSelector":{"description":"ServiceAccountSelector is an optional field for an expression used to select a pod based on service accounts.","type":"string"},"types":{"description":"Types indicates whether this policy applies to ingress, or to egress, or to both.  When not explicitly specified (and so the value on creation is empty or nil), Calico defaults Types according to what Ingress and Egress are present in the policy.  The default is: \n - [ PolicyTypeIngress ], if there are no Egress rules (including the case where there are   also no Ingress rules) \n - [ PolicyTypeEgress ], if there are Egress rules but no Ingress rules \n - [ PolicyTypeIngress, PolicyTypeEgress ], if there are both Ingress and Egress rules. \n When the policy is read back again, Types will always be one of these values, never empty or nil.","type":"array","items":{"description":"PolicyType enumerates the possible values of the PolicySpec Types field.","type":"string"}}}}}}},"versions":[{"name":"v1","served":true,"storage":true}],"conversion":{"strategy":"None"},"preserveUnknownFields":false},"status":{"conditions":[{"type":"NamesAccepted","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"NoConflicts","message":"no conflicts found"},{"type":"Established","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"InitialNamesAccepted","message":"the initial names have been accepted"}],"acceptedNames":{"plural":"networkpolicies","singular":"networkpolicy","kind":"NetworkPolicy","listKind":"NetworkPolicyList"},"storedVersions":["v1"]}}

/registry/apiextensions.k8s.io/customresourcedefinitions/networksets.crd.projectcalico.org
{"kind":"CustomResourceDefinition","apiVersion":"apiextensions.k8s.io/v1beta1","metadata":{"name":"networksets.crd.projectcalico.org","uid":"847e507c-ddef-4a7f-b99c-65b6dda7c32f","generation":1,"creationTimestamp":"2023-11-22T16:51:52Z","managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:status":{"f:acceptedNames":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:conditions":{"k:{\"type\":\"Established\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}},"k:{\"type\":\"NamesAccepted\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}},"subresource":"status"},{"manager":"kubectl-create","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:spec":{"f:conversion":{".":{},"f:strategy":{}},"f:group":{},"f:names":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:scope":{},"f:versions":{}}}}]},"spec":{"group":"crd.projectcalico.org","version":"v1","names":{"plural":"networksets","singular":"networkset","kind":"NetworkSet","listKind":"NetworkSetList"},"scope":"Namespaced","validation":{"openAPIV3Schema":{"description":"NetworkSet is the Namespaced-equivalent of the GlobalNetworkSet.","type":"object","properties":{"apiVersion":{"description":"APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources","type":"string"},"kind":{"description":"Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds","type":"string"},"metadata":{"type":"object"},"spec":{"description":"NetworkSetSpec contains the specification for a NetworkSet resource.","type":"object","properties":{"nets":{"description":"The list of IP networks that belong to this set.","type":"array","items":{"type":"string"}}}}}}},"versions":[{"name":"v1","served":true,"storage":true}],"conversion":{"strategy":"None"},"preserveUnknownFields":false},"status":{"conditions":[{"type":"NamesAccepted","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"NoConflicts","message":"no conflicts found"},{"type":"Established","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"InitialNamesAccepted","message":"the initial names have been accepted"}],"acceptedNames":{"plural":"networksets","singular":"networkset","kind":"NetworkSet","listKind":"NetworkSetList"},"storedVersions":["v1"]}}

/registry/apiextensions.k8s.io/customresourcedefinitions/tigerastatuses.operator.tigera.io
{"kind":"CustomResourceDefinition","apiVersion":"apiextensions.k8s.io/v1beta1","metadata":{"name":"tigerastatuses.operator.tigera.io","uid":"783a3deb-3311-4e7e-9891-4a117132004c","generation":1,"creationTimestamp":"2023-11-22T16:51:53Z","annotations":{"controller-gen.kubebuilder.io/version":"v0.3.0"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:53Z","fieldsType":"FieldsV1","fieldsV1":{"f:status":{"f:acceptedNames":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:conditions":{"k:{\"type\":\"Established\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}},"k:{\"type\":\"NamesAccepted\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}},"subresource":"status"},{"manager":"kubectl-create","operation":"Update","apiVersion":"apiextensions.k8s.io/v1","time":"2023-11-22T16:51:53Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:annotations":{".":{},"f:controller-gen.kubebuilder.io/version":{}}},"f:spec":{"f:conversion":{".":{},"f:strategy":{}},"f:group":{},"f:names":{"f:kind":{},"f:listKind":{},"f:plural":{},"f:singular":{}},"f:scope":{},"f:versions":{}}}}]},"spec":{"group":"operator.tigera.io","version":"v1","names":{"plural":"tigerastatuses","singular":"tigerastatus","kind":"TigeraStatus","listKind":"TigeraStatusList"},"scope":"Cluster","validation":{"openAPIV3Schema":{"description":"TigeraStatus represents the most recently observed status for Calico or a Calico Enterprise functional area.","type":"object","properties":{"apiVersion":{"description":"APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources","type":"string"},"kind":{"description":"Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds","type":"string"},"metadata":{"type":"object"},"spec":{"description":"TigeraStatusSpec defines the desired state of TigeraStatus","type":"object"},"status":{"description":"TigeraStatusStatus defines the observed state of TigeraStatus","type":"object","required":["conditions"],"properties":{"conditions":{"description":"Conditions represents the latest observed set of conditions for this component. A component may be one or more of Available, Progressing, or Degraded.","type":"array","items":{"description":"TigeraStatusCondition represents a condition attached to a particular component.","type":"object","required":["lastTransitionTime","status","type"],"properties":{"lastTransitionTime":{"description":"The timestamp representing the start time for the current status.","type":"string","format":"date-time"},"message":{"description":"Optionally, a detailed message providing additional context.","type":"string"},"observedGeneration":{"description":"observedGeneration represents the generation that the condition was set based upon. For instance, if generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date with respect to the current state of the instance.","type":"integer","format":"int64"},"reason":{"description":"A brief reason explaining the condition.","type":"string"},"status":{"description":"The status of the condition. May be True, False, or Unknown.","type":"string"},"type":{"description":"The type of condition. May be Available, Progressing, or Degraded.","type":"string"}}}}}}}}},"subresources":{"status":{}},"versions":[{"name":"v1","served":true,"storage":true}],"additionalPrinterColumns":[{"name":"Available","type":"string","description":"Whether the component running and stable.","JSONPath":".status.conditions[?(@.type=='Available')].status"},{"name":"Progressing","type":"string","description":"Whether the component is processing changes.","JSONPath":".status.conditions[?(@.type=='Progressing')].status"},{"name":"Degraded","type":"string","description":"Whether the component is degraded.","JSONPath":".status.conditions[?(@.type=='Degraded')].status"},{"name":"Since","type":"date","description":"The time the component's Available status last changed.","JSONPath":".status.conditions[?(@.type=='Available')].lastTransitionTime"}],"conversion":{"strategy":"None"},"preserveUnknownFields":false},"status":{"conditions":[{"type":"NamesAccepted","status":"True","lastTransitionTime":"2023-11-22T16:51:53Z","reason":"NoConflicts","message":"no conflicts found"},{"type":"Established","status":"True","lastTransitionTime":"2023-11-22T16:51:54Z","reason":"InitialNamesAccepted","message":"the initial names have been accepted"}],"acceptedNames":{"plural":"tigerastatuses","singular":"tigerastatus","kind":"TigeraStatus","listKind":"TigeraStatusList"},"storedVersions":["v1"]}}

/registry/apiregistration.k8s.io/apiservices/v1.
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v1.","uid":"0bf43e59-405c-4eb1-a022-7ce921479788","creationTimestamp":"2023-11-22T14:31:36Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"onstart"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T14:31:36Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"version":"v1","groupPriorityMinimum":18000,"versionPriority":1},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T14:31:36Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/apiregistration.k8s.io/apiservices/v1.admissionregistration.k8s.io
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v1.admissionregistration.k8s.io","uid":"16f71d6e-de72-4dbb-951f-ffcb17d37d90","creationTimestamp":"2023-11-22T14:31:36Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"onstart"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T14:31:36Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:group":{},"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"group":"admissionregistration.k8s.io","version":"v1","groupPriorityMinimum":16700,"versionPriority":15},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T14:31:36Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/apiregistration.k8s.io/apiservices/v1.apiextensions.k8s.io
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v1.apiextensions.k8s.io","uid":"21f76e05-5c5c-4dd6-9fa8-84b8a6d419fa","creationTimestamp":"2023-11-22T14:31:36Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"onstart"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T14:31:36Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:group":{},"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"group":"apiextensions.k8s.io","version":"v1","groupPriorityMinimum":16700,"versionPriority":15},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T14:31:36Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/apiregistration.k8s.io/apiservices/v1.apps
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v1.apps","uid":"83ffdf04-c7a6-447b-acd6-a167ac890f9d","creationTimestamp":"2023-11-22T14:31:36Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"onstart"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T14:31:36Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:group":{},"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"group":"apps","version":"v1","groupPriorityMinimum":17800,"versionPriority":15},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T14:31:36Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/apiregistration.k8s.io/apiservices/v1.authentication.k8s.io
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v1.authentication.k8s.io","uid":"81e1e0d3-ab35-4609-a6d9-ce0697492e46","creationTimestamp":"2023-11-22T14:31:36Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"onstart"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T14:31:36Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:group":{},"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"group":"authentication.k8s.io","version":"v1","groupPriorityMinimum":17700,"versionPriority":15},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T14:31:36Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/apiregistration.k8s.io/apiservices/v1.authorization.k8s.io
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v1.authorization.k8s.io","uid":"7bb99657-f287-4dfa-962b-2a2ae2c59b38","creationTimestamp":"2023-11-22T14:31:36Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"onstart"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T14:31:36Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:group":{},"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"group":"authorization.k8s.io","version":"v1","groupPriorityMinimum":17600,"versionPriority":15},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T14:31:36Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/apiregistration.k8s.io/apiservices/v1.autoscaling
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v1.autoscaling","uid":"7ce0639b-00ed-4caf-9a7b-9a791495afc5","creationTimestamp":"2023-11-22T14:31:36Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"onstart"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T14:31:36Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:group":{},"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"group":"autoscaling","version":"v1","groupPriorityMinimum":17500,"versionPriority":15},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T14:31:36Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/apiregistration.k8s.io/apiservices/v1.batch
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v1.batch","uid":"5a7660c1-456b-4f66-89f3-b34a8a5902c6","creationTimestamp":"2023-11-22T14:31:36Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"onstart"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T14:31:36Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:group":{},"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"group":"batch","version":"v1","groupPriorityMinimum":17400,"versionPriority":15},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T14:31:36Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/apiregistration.k8s.io/apiservices/v1.certificates.k8s.io
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v1.certificates.k8s.io","uid":"49f59746-5aef-4685-b4b0-fdcb94c77d0a","creationTimestamp":"2023-11-22T14:31:36Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"onstart"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T14:31:36Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:group":{},"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"group":"certificates.k8s.io","version":"v1","groupPriorityMinimum":17300,"versionPriority":15},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T14:31:36Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/apiregistration.k8s.io/apiservices/v1.coordination.k8s.io
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v1.coordination.k8s.io","uid":"04cda5bb-5177-4592-b000-e97b1863a08f","creationTimestamp":"2023-11-22T14:31:36Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"onstart"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T14:31:36Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:group":{},"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"group":"coordination.k8s.io","version":"v1","groupPriorityMinimum":16500,"versionPriority":15},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T14:31:36Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/apiregistration.k8s.io/apiservices/v1.crd.projectcalico.org
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v1.crd.projectcalico.org","uid":"d02b625a-f593-420a-893f-3bac4e35280f","creationTimestamp":"2023-11-22T16:51:52Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"true"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T16:51:52Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:group":{},"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"group":"crd.projectcalico.org","version":"v1","groupPriorityMinimum":1000,"versionPriority":100},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T16:51:52Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/apiregistration.k8s.io/apiservices/v1.discovery.k8s.io
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v1.discovery.k8s.io","uid":"85486efe-f03e-408d-adea-4f5307984d8b","creationTimestamp":"2023-11-22T14:31:36Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"onstart"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T14:31:36Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:group":{},"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"group":"discovery.k8s.io","version":"v1","groupPriorityMinimum":16200,"versionPriority":15},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T14:31:36Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/apiregistration.k8s.io/apiservices/v1.events.k8s.io
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v1.events.k8s.io","uid":"17e4a21b-7ac1-41b0-92ff-84aa7345d619","creationTimestamp":"2023-11-22T14:31:36Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"onstart"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T14:31:36Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:group":{},"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"group":"events.k8s.io","version":"v1","groupPriorityMinimum":17750,"versionPriority":15},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T14:31:36Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/apiregistration.k8s.io/apiservices/v1.networking.k8s.io
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v1.networking.k8s.io","uid":"d4cd3193-c083-4932-8ccb-07b8824a882e","creationTimestamp":"2023-11-22T14:31:36Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"onstart"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T14:31:36Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:group":{},"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"group":"networking.k8s.io","version":"v1","groupPriorityMinimum":17200,"versionPriority":15},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T14:31:36Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/apiregistration.k8s.io/apiservices/v1.node.k8s.io
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v1.node.k8s.io","uid":"9cf9f7e3-93d5-4dd7-b7da-ebb44d4bfe78","creationTimestamp":"2023-11-22T14:31:36Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"onstart"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T14:31:36Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:group":{},"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"group":"node.k8s.io","version":"v1","groupPriorityMinimum":16300,"versionPriority":15},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T14:31:36Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/apiregistration.k8s.io/apiservices/v1.operator.tigera.io
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v1.operator.tigera.io","uid":"42363fdf-2e98-4440-a915-d74544235562","creationTimestamp":"2023-11-22T16:51:53Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"true"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T16:51:53Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:group":{},"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"group":"operator.tigera.io","version":"v1","groupPriorityMinimum":1000,"versionPriority":100},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T16:51:53Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/apiregistration.k8s.io/apiservices/v1.policy
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v1.policy","uid":"228f66f6-f92c-4524-b1d9-197d5dd80b1c","creationTimestamp":"2023-11-22T14:31:36Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"onstart"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T14:31:36Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:group":{},"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"group":"policy","version":"v1","groupPriorityMinimum":17100,"versionPriority":15},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T14:31:36Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/apiregistration.k8s.io/apiservices/v1.rbac.authorization.k8s.io
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v1.rbac.authorization.k8s.io","uid":"30bb0919-cc43-4706-965b-35b47247f2bf","creationTimestamp":"2023-11-22T14:31:36Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"onstart"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T14:31:36Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:group":{},"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"group":"rbac.authorization.k8s.io","version":"v1","groupPriorityMinimum":17000,"versionPriority":15},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T14:31:36Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/apiregistration.k8s.io/apiservices/v1.scheduling.k8s.io
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v1.scheduling.k8s.io","uid":"42d7e394-5e7b-41a5-9c30-02e222ab978d","creationTimestamp":"2023-11-22T14:31:36Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"onstart"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T14:31:36Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:group":{},"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"group":"scheduling.k8s.io","version":"v1","groupPriorityMinimum":16600,"versionPriority":15},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T14:31:36Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/apiregistration.k8s.io/apiservices/v1.storage.k8s.io
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v1.storage.k8s.io","uid":"1c8219b3-4dfa-4935-aee3-3626c8713330","creationTimestamp":"2023-11-22T14:31:36Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"onstart"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T14:31:36Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:group":{},"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"group":"storage.k8s.io","version":"v1","groupPriorityMinimum":16800,"versionPriority":15},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T14:31:36Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/apiregistration.k8s.io/apiservices/v1beta1.batch
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v1beta1.batch","uid":"76b12ac1-4ef9-4679-a5c7-3f7ad0472dbd","creationTimestamp":"2023-11-22T14:31:36Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"onstart"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T14:31:36Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:group":{},"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"group":"batch","version":"v1beta1","groupPriorityMinimum":17400,"versionPriority":9},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T14:31:36Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/apiregistration.k8s.io/apiservices/v1beta1.discovery.k8s.io
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v1beta1.discovery.k8s.io","uid":"1f80a932-a0bc-4550-9e3d-5a96944c2a9f","creationTimestamp":"2023-11-22T14:31:36Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"onstart"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T14:31:36Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:group":{},"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"group":"discovery.k8s.io","version":"v1beta1","groupPriorityMinimum":16200,"versionPriority":12},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T14:31:36Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/apiregistration.k8s.io/apiservices/v1beta1.events.k8s.io
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v1beta1.events.k8s.io","uid":"70e9961c-6f8c-4f04-a7fd-201abb36b9e3","creationTimestamp":"2023-11-22T14:31:36Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"onstart"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T14:31:36Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:group":{},"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"group":"events.k8s.io","version":"v1beta1","groupPriorityMinimum":17750,"versionPriority":5},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T14:31:36Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/apiregistration.k8s.io/apiservices/v1beta1.flowcontrol.apiserver.k8s.io
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v1beta1.flowcontrol.apiserver.k8s.io","uid":"e797484a-774a-41f4-a7cd-39f9fe777243","creationTimestamp":"2023-11-22T14:31:36Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"onstart"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T14:31:36Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:group":{},"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"group":"flowcontrol.apiserver.k8s.io","version":"v1beta1","groupPriorityMinimum":16100,"versionPriority":12},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T14:31:36Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/apiregistration.k8s.io/apiservices/v1beta1.node.k8s.io
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v1beta1.node.k8s.io","uid":"02688f8b-6f6a-41e9-bf22-a2a4de19a0dd","creationTimestamp":"2023-11-22T14:31:36Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"onstart"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T14:31:36Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:group":{},"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"group":"node.k8s.io","version":"v1beta1","groupPriorityMinimum":16300,"versionPriority":9},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T14:31:36Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/apiregistration.k8s.io/apiservices/v1beta1.policy
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v1beta1.policy","uid":"d505d479-0c0f-4115-b760-043938038f1f","creationTimestamp":"2023-11-22T14:31:36Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"onstart"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T14:31:36Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:group":{},"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"group":"policy","version":"v1beta1","groupPriorityMinimum":17100,"versionPriority":9},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T14:31:36Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/apiregistration.k8s.io/apiservices/v1beta1.storage.k8s.io
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v1beta1.storage.k8s.io","uid":"a667f817-03dc-4b1b-9900-b29b28800408","creationTimestamp":"2023-11-22T14:31:36Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"onstart"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T14:31:36Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:group":{},"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"group":"storage.k8s.io","version":"v1beta1","groupPriorityMinimum":16800,"versionPriority":9},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T14:31:36Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/apiregistration.k8s.io/apiservices/v1beta2.flowcontrol.apiserver.k8s.io
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v1beta2.flowcontrol.apiserver.k8s.io","uid":"b642255d-efd3-497c-97ca-6539f94d0d18","creationTimestamp":"2023-11-22T14:31:36Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"onstart"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T14:31:36Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:group":{},"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"group":"flowcontrol.apiserver.k8s.io","version":"v1beta2","groupPriorityMinimum":16100,"versionPriority":15},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T14:31:36Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/apiregistration.k8s.io/apiservices/v2.autoscaling
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v2.autoscaling","uid":"5dbc2289-37c8-4baa-bf1f-76cf4d84681d","creationTimestamp":"2023-11-22T14:31:36Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"onstart"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T14:31:36Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:group":{},"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"group":"autoscaling","version":"v2","groupPriorityMinimum":17500,"versionPriority":30},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T14:31:36Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/apiregistration.k8s.io/apiservices/v2beta1.autoscaling
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v2beta1.autoscaling","uid":"c8283e95-b554-4aac-a868-423eac7211ce","creationTimestamp":"2023-11-22T14:31:36Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"onstart"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T14:31:36Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:group":{},"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"group":"autoscaling","version":"v2beta1","groupPriorityMinimum":17500,"versionPriority":9},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T14:31:36Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/apiregistration.k8s.io/apiservices/v2beta2.autoscaling
{"kind":"APIService","apiVersion":"apiregistration.k8s.io/v1","metadata":{"name":"v2beta2.autoscaling","uid":"a4b21e0a-2431-447d-99bc-87209d90fc36","creationTimestamp":"2023-11-22T14:31:36Z","labels":{"kube-aggregator.kubernetes.io/automanaged":"onstart"},"managedFields":[{"manager":"kube-apiserver","operation":"Update","apiVersion":"apiregistration.k8s.io/v1","time":"2023-11-22T14:31:36Z","fieldsType":"FieldsV1","fieldsV1":{"f:metadata":{"f:labels":{".":{},"f:kube-aggregator.kubernetes.io/automanaged":{}}},"f:spec":{"f:group":{},"f:groupPriorityMinimum":{},"f:version":{},"f:versionPriority":{}}}}]},"spec":{"group":"autoscaling","version":"v2beta2","groupPriorityMinimum":17500,"versionPriority":1},"status":{"conditions":[{"type":"Available","status":"True","lastTransitionTime":"2023-11-22T14:31:36Z","reason":"Local","message":"Local APIServices are always available"}]}}

/registry/clusterrolebindings/cluster-admin
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�

cluster-admin  " *$0f2828dd-86a8-45b1-bf22-05ba0038d7e32 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B 4
Grouprbac.authorization.k8s.iosystem:masters" 7
rbac.authorization.k8s.ioClusterRole
cluster-admin " 
/registry/clusterrolebindings/system:basic-user
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
system:basic-user  " *$520a8eea-be56-4c0f-a0e8-b3a88ddb10062 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B :
Grouprbac.authorization.k8s.iosystem:authenticated" ;
rbac.authorization.k8s.ioClusterRolesystem:basic-user " 
/registry/clusterrolebindings/system:controller:attachdetach-controller
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
)system:controller:attachdetach-controller  " *$3e70d9e6-e914-44da-aca5-bbc0321261572 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B 8
ServiceAccount attachdetach-controller"kube-systemS
rbac.authorization.k8s.ioClusterRole)system:controller:attachdetach-controller " 
/registry/clusterrolebindings/system:controller:certificate-controller
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
(system:controller:certificate-controller  " *$a3f76497-c52f-4eda-9f98-93cc880affa12 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B 7
ServiceAccount certificate-controller"kube-systemR
rbac.authorization.k8s.ioClusterRole(system:controller:certificate-controller " 
/registry/clusterrolebindings/system:controller:clusterrole-aggregation-controller
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
4system:controller:clusterrole-aggregation-controller  " *$065943fa-443e-4271-b4e1-43fa57152eb42 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B C
ServiceAccount "clusterrole-aggregation-controller"kube-system^
rbac.authorization.k8s.ioClusterRole4system:controller:clusterrole-aggregation-controller " 
/registry/clusterrolebindings/system:controller:cronjob-controller
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
$system:controller:cronjob-controller  " *$feafa576-3f62-4caf-9e46-9cac4242e1b92 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B 3
ServiceAccount cronjob-controller"kube-systemN
rbac.authorization.k8s.ioClusterRole$system:controller:cronjob-controller " 
/registry/clusterrolebindings/system:controller:daemon-set-controller
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
'system:controller:daemon-set-controller  " *$5b3239a9-0f91-4206-b428-c534ae4482f32 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B 6
ServiceAccount daemon-set-controller"kube-systemQ
rbac.authorization.k8s.ioClusterRole'system:controller:daemon-set-controller " 
/registry/clusterrolebindings/system:controller:deployment-controller
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
'system:controller:deployment-controller  " *$d430842a-9472-4d3e-bc8b-1a884c1d34122 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B 6
ServiceAccount deployment-controller"kube-systemQ
rbac.authorization.k8s.ioClusterRole'system:controller:deployment-controller " 
/registry/clusterrolebindings/system:controller:disruption-controller
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
'system:controller:disruption-controller  " *$f4e8a831-c5bf-4efd-bbf0-607e3b33effe2 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B 6
ServiceAccount disruption-controller"kube-systemQ
rbac.authorization.k8s.ioClusterRole'system:controller:disruption-controller " 
/registry/clusterrolebindings/system:controller:endpoint-controller
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
%system:controller:endpoint-controller  " *$1c208ebe-6612-45a3-9d9b-ed427664e4562 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B 4
ServiceAccount endpoint-controller"kube-systemO
rbac.authorization.k8s.ioClusterRole%system:controller:endpoint-controller " 
/registry/clusterrolebindings/system:controller:endpointslice-controller
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
*system:controller:endpointslice-controller  " *$6ecb4150-1335-4847-922d-411928fbeabe2 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B 9
ServiceAccount endpointslice-controller"kube-systemT
rbac.authorization.k8s.ioClusterRole*system:controller:endpointslice-controller " 
/registry/clusterrolebindings/system:controller:endpointslicemirroring-controller
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
3system:controller:endpointslicemirroring-controller  " *$f93e5616-470a-440b-b834-284f360f3e142 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B B
ServiceAccount !endpointslicemirroring-controller"kube-system]
rbac.authorization.k8s.ioClusterRole3system:controller:endpointslicemirroring-controller " 
/registry/clusterrolebindings/system:controller:ephemeral-volume-controller
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
-system:controller:ephemeral-volume-controller  " *$dfda1dc0-1a36-4a59-9314-87ba75a95b362 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B <
ServiceAccount ephemeral-volume-controller"kube-systemW
rbac.authorization.k8s.ioClusterRole-system:controller:ephemeral-volume-controller " 
/registry/clusterrolebindings/system:controller:expand-controller
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
#system:controller:expand-controller  " *$519ba5af-86d1-4c54-a146-bf98de4fef3c2 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B 2
ServiceAccount expand-controller"kube-systemM
rbac.authorization.k8s.ioClusterRole#system:controller:expand-controller " 
/registry/clusterrolebindings/system:controller:generic-garbage-collector
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
+system:controller:generic-garbage-collector  " *$054254c1-3c60-4abf-a28d-c544eea158d82 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B :
ServiceAccount generic-garbage-collector"kube-systemU
rbac.authorization.k8s.ioClusterRole+system:controller:generic-garbage-collector " 
/registry/clusterrolebindings/system:controller:horizontal-pod-autoscaler
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
+system:controller:horizontal-pod-autoscaler  " *$b46b2d30-2830-40b8-9486-77124201a2372 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B :
ServiceAccount horizontal-pod-autoscaler"kube-systemU
rbac.authorization.k8s.ioClusterRole+system:controller:horizontal-pod-autoscaler " 
/registry/clusterrolebindings/system:controller:job-controller
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
 system:controller:job-controller  " *$ab6d8f2c-bda7-4843-9874-47c1b0518a082 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B /
ServiceAccount job-controller"kube-systemJ
rbac.authorization.k8s.ioClusterRole system:controller:job-controller " 
/registry/clusterrolebindings/system:controller:namespace-controller
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
&system:controller:namespace-controller  " *$d8044c58-728b-439f-98c5-25b76f4f54232 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B 5
ServiceAccount namespace-controller"kube-systemP
rbac.authorization.k8s.ioClusterRole&system:controller:namespace-controller " 
/registry/clusterrolebindings/system:controller:node-controller
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
!system:controller:node-controller  " *$b5c96521-bc0e-445d-b8fa-ed325ff071e92 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B 0
ServiceAccount node-controller"kube-systemK
rbac.authorization.k8s.ioClusterRole!system:controller:node-controller " 
/registry/clusterrolebindings/system:controller:persistent-volume-binder
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
*system:controller:persistent-volume-binder  " *$cb2457d1-fa6f-4cec-aef8-6e09cd8100e12 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B 9
ServiceAccount persistent-volume-binder"kube-systemT
rbac.authorization.k8s.ioClusterRole*system:controller:persistent-volume-binder " 
/registry/clusterrolebindings/system:controller:pod-garbage-collector
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
'system:controller:pod-garbage-collector  " *$ae5a79bd-2641-4793-940c-811ba8fda8642 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B 6
ServiceAccount pod-garbage-collector"kube-systemQ
rbac.authorization.k8s.ioClusterRole'system:controller:pod-garbage-collector " 
/registry/clusterrolebindings/system:controller:pv-protection-controller
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
*system:controller:pv-protection-controller  " *$f7c9f096-9d62-4e91-a35d-2bab46a6499a2 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B 9
ServiceAccount pv-protection-controller"kube-systemT
rbac.authorization.k8s.ioClusterRole*system:controller:pv-protection-controller " 
/registry/clusterrolebindings/system:controller:pvc-protection-controller
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
+system:controller:pvc-protection-controller  " *$2704d60a-631b-4371-87d2-8085ed08a2002 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B :
ServiceAccount pvc-protection-controller"kube-systemU
rbac.authorization.k8s.ioClusterRole+system:controller:pvc-protection-controller " 
/registry/clusterrolebindings/system:controller:replicaset-controller
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
'system:controller:replicaset-controller  " *$5f161b9b-31ec-4b82-b85d-8da2af322e5f2 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B 6
ServiceAccount replicaset-controller"kube-systemQ
rbac.authorization.k8s.ioClusterRole'system:controller:replicaset-controller " 
/registry/clusterrolebindings/system:controller:replication-controller
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
(system:controller:replication-controller  " *$d0eea037-1dd3-4245-85b0-4efd7595c8d22 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B 7
ServiceAccount replication-controller"kube-systemR
rbac.authorization.k8s.ioClusterRole(system:controller:replication-controller " 
/registry/clusterrolebindings/system:controller:resourcequota-controller
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
*system:controller:resourcequota-controller  " *$81096814-335f-49f3-a86d-596f4ae36ae92 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B 9
ServiceAccount resourcequota-controller"kube-systemT
rbac.authorization.k8s.ioClusterRole*system:controller:resourcequota-controller " 
/registry/clusterrolebindings/system:controller:root-ca-cert-publisher
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
(system:controller:root-ca-cert-publisher  " *$2dc53165-c4b5-4a9d-9249-ca5c10ede8822 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B 7
ServiceAccount root-ca-cert-publisher"kube-systemR
rbac.authorization.k8s.ioClusterRole(system:controller:root-ca-cert-publisher " 
/registry/clusterrolebindings/system:controller:route-controller
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
"system:controller:route-controller  " *$67f08fac-6ac2-4b67-8cb7-140724122ef92 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B 1
ServiceAccount route-controller"kube-systemL
rbac.authorization.k8s.ioClusterRole"system:controller:route-controller " 
/registry/clusterrolebindings/system:controller:service-account-controller
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
,system:controller:service-account-controller  " *$f6ff9244-6aa1-4c2d-8adb-07e9399210272 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B ;
ServiceAccount service-account-controller"kube-systemV
rbac.authorization.k8s.ioClusterRole,system:controller:service-account-controller " 
/registry/clusterrolebindings/system:controller:service-controller
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
$system:controller:service-controller  " *$abaf5150-8098-4703-8abc-e8951b6466dc2 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B 3
ServiceAccount service-controller"kube-systemN
rbac.authorization.k8s.ioClusterRole$system:controller:service-controller " 
/registry/clusterrolebindings/system:controller:statefulset-controller
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
(system:controller:statefulset-controller  " *$7e56cecd-d0a9-4254-b6aa-9607dd02ab0f2 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B 7
ServiceAccount statefulset-controller"kube-systemR
rbac.authorization.k8s.ioClusterRole(system:controller:statefulset-controller " 
/registry/clusterrolebindings/system:controller:ttl-after-finished-controller
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
/system:controller:ttl-after-finished-controller  " *$e1a64c5e-a4b8-433a-ba76-b689a3084f112 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B >
ServiceAccount ttl-after-finished-controller"kube-systemY
rbac.authorization.k8s.ioClusterRole/system:controller:ttl-after-finished-controller " 
/registry/clusterrolebindings/system:controller:ttl-controller
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
 system:controller:ttl-controller  " *$89160fbc-2f87-44f7-92a9-9ffd6bd6675f2 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B /
ServiceAccount ttl-controller"kube-systemJ
rbac.authorization.k8s.ioClusterRole system:controller:ttl-controller " 
/registry/clusterrolebindings/system:discovery
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
system:discovery  " *$8fd50303-bee2-4742-9ed9-e33d272dce662 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B :
Grouprbac.authorization.k8s.iosystem:authenticated" :
rbac.authorization.k8s.ioClusterRolesystem:discovery " 
/registry/clusterrolebindings/system:kube-controller-manager
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
system:kube-controller-manager  " *$5b680d6d-2091-4cca-9ac8-88e8dfe709af2 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B C
Userrbac.authorization.k8s.iosystem:kube-controller-manager" H
rbac.authorization.k8s.ioClusterRolesystem:kube-controller-manager " 
/registry/clusterrolebindings/system:kube-dns
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
system:kube-dns  " *$c1769512-3948-4743-9bef-62173749e1a22 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B )
ServiceAccount kube-dns"kube-system9
rbac.authorization.k8s.ioClusterRolesystem:kube-dns " 
/registry/clusterrolebindings/system:kube-scheduler
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
system:kube-scheduler  " *$34ce0dce-5bf0-4826-b7b4-1325f3f541332 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B :
Userrbac.authorization.k8s.iosystem:kube-scheduler" ?
rbac.authorization.k8s.ioClusterRolesystem:kube-scheduler " 
/registry/clusterrolebindings/system:monitoring
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
system:monitoring  " *$4e1926e6-3c92-4fad-9084-c23180ee09da2 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B 7
Grouprbac.authorization.k8s.iosystem:monitoring" ;
rbac.authorization.k8s.ioClusterRolesystem:monitoring " 
/registry/clusterrolebindings/system:node
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
system:node  " *$875b0044-3001-44bb-825e-b47481b2234c2 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{}}B 5
rbac.authorization.k8s.ioClusterRolesystem:node " 
/registry/clusterrolebindings/system:node-proxier
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
system:node-proxier  " *$d55b2f90-55b5-4ace-b396-43eb12dbd7302 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B 6
Userrbac.authorization.k8s.iosystem:kube-proxy" =
rbac.authorization.k8s.ioClusterRolesystem:node-proxier " 
/registry/clusterrolebindings/system:public-info-viewer
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
system:public-info-viewer  " *$0f84c1d6-0d26-44eb-b0e8-06e6ff3055b92 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B :
Grouprbac.authorization.k8s.iosystem:authenticated" <
Grouprbac.authorization.k8s.iosystem:unauthenticated" C
rbac.authorization.k8s.ioClusterRolesystem:public-info-viewer " 
/registry/clusterrolebindings/system:service-account-issuer-discovery
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
'system:service-account-issuer-discovery  " *$4e7cff80-76a8-47b7-ab3a-dd76145252612 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B <
Grouprbac.authorization.k8s.iosystem:serviceaccounts" Q
rbac.authorization.k8s.ioClusterRole'system:service-account-issuer-discovery " 
/registry/clusterrolebindings/system:volume-scheduler
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
system:volume-scheduler  " *$a592600e-fb7e-4fe8-ad1a-7aee00ffd3412 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B :
Userrbac.authorization.k8s.iosystem:kube-scheduler" A
rbac.authorization.k8s.ioClusterRolesystem:volume-scheduler " 
/registry/clusterrolebindings/tigera-operator
k8s 
2
rbac.authorization.k8s.io/v1ClusterRoleBinding�
�
tigera-operator  " *$454a899b-7436-47f6-90be-28e1d1ce98d92 8 B���� z �p
kubectl-createUpdaterbac.authorization.k8s.io/v1"���� 2FieldsV1:"
 {"f:roleRef":{},"f:subjects":{}}B 4
ServiceAccount tigera-operator"tigera-operator9
rbac.authorization.k8s.ioClusterRoletigera-operator " 
/registry/clusterroles/admin
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
admin  " *$6c6530ef-ed07-4b51-a756-763ff5489d072 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez �q
"clusterrole-aggregation-controllerApplyrbac.authorization.k8s.io/v1"١�� 2FieldsV1:
{"f:rules":{}}B ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:aggregationRule":{".":{},"f:clusterRoleSelectors":{}},"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}}}B c
get
list
watch pods/attach	pods/execpods/portforward
pods/proxysecretsservices/proxy 
impersonate serviceaccountso
create
delete
deletecollection
patch
update podspods/attach	pods/execpods/portforward
pods/proxy
create 
pods/eviction�
create
delete
deletecollection
patch
update 
configmapseventspersistentvolumeclaimsreplicationcontrollersreplicationcontrollers/scalesecretsserviceaccountsservicesservices/proxy!
create serviceaccounts/token�
create
delete
deletecollection
patch
updateapps
daemonsetsdeploymentsdeployments/rollbackdeployments/scalereplicasetsreplicasets/scalestatefulsetsstatefulsets/scaleX
create
delete
deletecollection
patch
updateautoscalinghorizontalpodautoscalersH
create
delete
deletecollection
patch
updatebatchcronjobsjobs�
create
delete
deletecollection
patch
update
extensions
daemonsetsdeploymentsdeployments/rollbackdeployments/scale	ingressesnetworkpoliciesreplicasetsreplicasets/scalereplicationcontrollers/scaleO
create
delete
deletecollection
patch
updatepolicypoddisruptionbudgets`
create
delete
deletecollection
patch
updatenetworking.k8s.io	ingressesnetworkpolicies`
create
delete
deletecollection
get
list
patch
update
watchcoordination.k8s.ioleases�
get
list
watch 
configmaps	endpointspersistentvolumeclaimspersistentvolumeclaims/statuspodsreplicationcontrollersreplicationcontrollers/scaleserviceaccountsservicesservices/status�
get
list
watch bindingseventslimitrangesnamespaces/statuspods/logpods/statusreplicationcontrollers/statusresourcequotasresourcequotas/status 
get
list
watch 
namespaces4
get
list
watchdiscovery.k8s.ioendpointslices�
get
list
watchappscontrollerrevisions
daemonsetsdaemonsets/statusdeploymentsdeployments/scaledeployments/statusreplicasetsreplicasets/scalereplicasets/statusstatefulsetsstatefulsets/scalestatefulsets/statusZ
get
list
watchautoscalinghorizontalpodautoscalershorizontalpodautoscalers/statusG
get
list
watchbatchcronjobscronjobs/statusjobsjobs/status�
get
list
watch
extensions
daemonsetsdaemonsets/statusdeploymentsdeployments/scaledeployments/status	ingressesingresses/statusnetworkpoliciesreplicasetsreplicasets/scalereplicasets/statusreplicationcontrollers/scaleM
get
list
watchpolicypoddisruptionbudgetspoddisruptionbudgets/statusS
get
list
watchnetworking.k8s.io	ingressesingresses/statusnetworkpolicies9
createauthorization.k8s.iolocalsubjectaccessreviewss
create
delete
deletecollection
get
list
patch
update
watchrbac.authorization.k8s.iorolebindingsroles8
6
4
,rbac.authorization.k8s.io/aggregate-to-admintrue " 
/registry/clusterroles/cluster-admin
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�

cluster-admin  " *$06230eda-6e13-484d-9d08-4c07788d5f092 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B 	
***
*** " 
/registry/clusterroles/edit
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
edit  " *$85ea42ee-cff3-46e4-9d30-3d1efcf093932 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsZ4
,rbac.authorization.k8s.io/aggregate-to-admintrueb3
+rbac.authorization.kubernetes.io/autoupdatetruez �q
"clusterrole-aggregation-controllerApplyrbac.authorization.k8s.io/v1"١�� 2FieldsV1:
{"f:rules":{}}B ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:aggregationRule":{".":{},"f:clusterRoleSelectors":{}},"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{},"f:rbac.authorization.k8s.io/aggregate-to-admin":{}}}}B c
get
list
watch pods/attach	pods/execpods/portforward
pods/proxysecretsservices/proxy 
impersonate serviceaccountso
create
delete
deletecollection
patch
update podspods/attach	pods/execpods/portforward
pods/proxy
create 
pods/eviction�
create
delete
deletecollection
patch
update 
configmapseventspersistentvolumeclaimsreplicationcontrollersreplicationcontrollers/scalesecretsserviceaccountsservicesservices/proxy!
create serviceaccounts/token�
create
delete
deletecollection
patch
updateapps
daemonsetsdeploymentsdeployments/rollbackdeployments/scalereplicasetsreplicasets/scalestatefulsetsstatefulsets/scaleX
create
delete
deletecollection
patch
updateautoscalinghorizontalpodautoscalersH
create
delete
deletecollection
patch
updatebatchcronjobsjobs�
create
delete
deletecollection
patch
update
extensions
daemonsetsdeploymentsdeployments/rollbackdeployments/scale	ingressesnetworkpoliciesreplicasetsreplicasets/scalereplicationcontrollers/scaleO
create
delete
deletecollection
patch
updatepolicypoddisruptionbudgets`
create
delete
deletecollection
patch
updatenetworking.k8s.io	ingressesnetworkpolicies`
create
delete
deletecollection
get
list
patch
update
watchcoordination.k8s.ioleases�
get
list
watch 
configmaps	endpointspersistentvolumeclaimspersistentvolumeclaims/statuspodsreplicationcontrollersreplicationcontrollers/scaleserviceaccountsservicesservices/status�
get
list
watch bindingseventslimitrangesnamespaces/statuspods/logpods/statusreplicationcontrollers/statusresourcequotasresourcequotas/status 
get
list
watch 
namespaces4
get
list
watchdiscovery.k8s.ioendpointslices�
get
list
watchappscontrollerrevisions
daemonsetsdaemonsets/statusdeploymentsdeployments/scaledeployments/statusreplicasetsreplicasets/scalereplicasets/statusstatefulsetsstatefulsets/scalestatefulsets/statusZ
get
list
watchautoscalinghorizontalpodautoscalershorizontalpodautoscalers/statusG
get
list
watchbatchcronjobscronjobs/statusjobsjobs/status�
get
list
watch
extensions
daemonsetsdaemonsets/statusdeploymentsdeployments/scaledeployments/status	ingressesingresses/statusnetworkpoliciesreplicasetsreplicasets/scalereplicasets/statusreplicationcontrollers/scaleM
get
list
watchpolicypoddisruptionbudgetspoddisruptionbudgets/statusS
get
list
watchnetworking.k8s.io	ingressesingresses/statusnetworkpolicies7
5
3
+rbac.authorization.k8s.io/aggregate-to-edittrue " 
/registry/clusterroles/system:aggregate-to-admin
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
system:aggregate-to-admin  " *$5366c312-d8a2-4a31-bd35-e353cf767dec2 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsZ4
,rbac.authorization.k8s.io/aggregate-to-admintrueb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{},"f:rbac.authorization.k8s.io/aggregate-to-admin":{}}},"f:rules":{}}B 9
createauthorization.k8s.iolocalsubjectaccessreviewss
create
delete
deletecollection
get
list
patch
update
watchrbac.authorization.k8s.iorolebindingsroles " 
/registry/clusterroles/system:aggregate-to-edit
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
system:aggregate-to-edit  " *$466ae309-8816-40c9-9389-9dc28eb0b2a32 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsZ3
+rbac.authorization.k8s.io/aggregate-to-edittrueb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{},"f:rbac.authorization.k8s.io/aggregate-to-edit":{}}},"f:rules":{}}B c
get
list
watch pods/attach	pods/execpods/portforward
pods/proxysecretsservices/proxy 
impersonate serviceaccountso
create
delete
deletecollection
patch
update podspods/attach	pods/execpods/portforward
pods/proxy
create 
pods/eviction�
create
delete
deletecollection
patch
update 
configmapseventspersistentvolumeclaimsreplicationcontrollersreplicationcontrollers/scalesecretsserviceaccountsservicesservices/proxy!
create serviceaccounts/token�
create
delete
deletecollection
patch
updateapps
daemonsetsdeploymentsdeployments/rollbackdeployments/scalereplicasetsreplicasets/scalestatefulsetsstatefulsets/scaleX
create
delete
deletecollection
patch
updateautoscalinghorizontalpodautoscalersH
create
delete
deletecollection
patch
updatebatchcronjobsjobs�
create
delete
deletecollection
patch
update
extensions
daemonsetsdeploymentsdeployments/rollbackdeployments/scale	ingressesnetworkpoliciesreplicasetsreplicasets/scalereplicationcontrollers/scaleO
create
delete
deletecollection
patch
updatepolicypoddisruptionbudgets`
create
delete
deletecollection
patch
updatenetworking.k8s.io	ingressesnetworkpolicies`
create
delete
deletecollection
get
list
patch
update
watchcoordination.k8s.ioleases " 
/registry/clusterroles/system:aggregate-to-view
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
system:aggregate-to-view  " *$6175c8c9-e5d2-46e6-acec-611d4b4c9d122 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsZ3
+rbac.authorization.k8s.io/aggregate-to-viewtrueb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{},"f:rbac.authorization.k8s.io/aggregate-to-view":{}}},"f:rules":{}}B �
get
list
watch 
configmaps	endpointspersistentvolumeclaimspersistentvolumeclaims/statuspodsreplicationcontrollersreplicationcontrollers/scaleserviceaccountsservicesservices/status�
get
list
watch bindingseventslimitrangesnamespaces/statuspods/logpods/statusreplicationcontrollers/statusresourcequotasresourcequotas/status 
get
list
watch 
namespaces4
get
list
watchdiscovery.k8s.ioendpointslices�
get
list
watchappscontrollerrevisions
daemonsetsdaemonsets/statusdeploymentsdeployments/scaledeployments/statusreplicasetsreplicasets/scalereplicasets/statusstatefulsetsstatefulsets/scalestatefulsets/statusZ
get
list
watchautoscalinghorizontalpodautoscalershorizontalpodautoscalers/statusG
get
list
watchbatchcronjobscronjobs/statusjobsjobs/status�
get
list
watch
extensions
daemonsetsdaemonsets/statusdeploymentsdeployments/scaledeployments/status	ingressesingresses/statusnetworkpoliciesreplicasetsreplicasets/scalereplicasets/statusreplicationcontrollers/scaleM
get
list
watchpolicypoddisruptionbudgetspoddisruptionbudgets/statusS
get
list
watchnetworking.k8s.io	ingressesingresses/statusnetworkpolicies " 
/registry/clusterroles/system:auth-delegator
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
system:auth-delegator  " *$e5e80144-61cd-4657-8434-d7afd0c92e292 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B -
createauthentication.k8s.iotokenreviews4
createauthorization.k8s.iosubjectaccessreviews " 
/registry/clusterroles/system:basic-user
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
system:basic-user  " *$6ab0b7fa-6c95-46ed-a536-abce2a82c4712 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B Q
createauthorization.k8s.ioselfsubjectaccessreviewsselfsubjectrulesreviews " 
/registry/clusterroles/system:certificates.k8s.io:certificatesigningrequests:nodeclient
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
@system:certificates.k8s.io:certificatesigningrequests:nodeclient  " *$8374d92d-87c1-410c-962e-a6b627714a962 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B D
createcertificates.k8s.io%certificatesigningrequests/nodeclient " 
/registry/clusterroles/system:certificates.k8s.io:certificatesigningrequests:selfnodeclient
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
Dsystem:certificates.k8s.io:certificatesigningrequests:selfnodeclient  " *$69ec60b5-dc15-402c-99a1-3ba4ba4996e92 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B H
createcertificates.k8s.io)certificatesigningrequests/selfnodeclient " 
/registry/clusterroles/system:certificates.k8s.io:kube-apiserver-client-approver
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
9system:certificates.k8s.io:kube-apiserver-client-approver  " *$da9a4687-9c60-4b4a-b1e1-789f54f6ae9c2 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B L
approvecertificates.k8s.iosigners"#kubernetes.io/kube-apiserver-client " 
/registry/clusterroles/system:certificates.k8s.io:kube-apiserver-client-kubelet-approver
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
Asystem:certificates.k8s.io:kube-apiserver-client-kubelet-approver  " *$a3c8c02f-e4a8-418b-a0f6-4f1bd1c63ec92 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B T
approvecertificates.k8s.iosigners"+kubernetes.io/kube-apiserver-client-kubelet " 
/registry/clusterroles/system:certificates.k8s.io:kubelet-serving-approver
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
3system:certificates.k8s.io:kubelet-serving-approver  " *$3b99ffc5-1bb7-47f8-b150-fbe283d636f82 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B F
approvecertificates.k8s.iosigners"kubernetes.io/kubelet-serving " 
/registry/clusterroles/system:certificates.k8s.io:legacy-unknown-approver
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
2system:certificates.k8s.io:legacy-unknown-approver  " *$f1a5b2a4-587a-46b3-9bda-e331d36287162 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B E
approvecertificates.k8s.iosigners"kubernetes.io/legacy-unknown " 
/registry/clusterroles/system:controller:attachdetach-controller
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
)system:controller:attachdetach-controller  " *$7e94bc16-b88a-4168-a6ae-c7a1c4039ce22 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B :
list
watch persistentvolumeclaimspersistentvolumes
get
list
watch nodes
patch
update nodes/status
list
watch pods0
create
patch
update 
events.k8s.ioeventsE
create
delete
get
list
watchstorage.k8s.iovolumeattachments.
get
list
watchstorage.k8s.io
csidrivers,
get
list
watchstorage.k8s.iocsinodes " 
/registry/clusterroles/system:controller:certificate-controller
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
(system:controller:certificate-controller  " *$fe48309c-2e08-4e6e-9e67-70175c4c0eaf2 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B K
delete
get
list
watchcertificates.k8s.iocertificatesigningrequestse
updatecertificates.k8s.io#certificatesigningrequests/approval!certificatesigningrequests/statusT
approvecertificates.k8s.iosigners"+kubernetes.io/kube-apiserver-client-kubelet�
signcertificates.k8s.iosigners"#kubernetes.io/kube-apiserver-client"+kubernetes.io/kube-apiserver-client-kubelet"kubernetes.io/kubelet-serving"kubernetes.io/legacy-unknown4
createauthorization.k8s.iosubjectaccessreviews0
create
patch
update 
events.k8s.ioevents " 
/registry/clusterroles/system:controller:clusterrole-aggregation-controller
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
4system:controller:clusterrole-aggregation-controller  " *$8126d9d5-9c93-48fb-b189-c84905dde76b2 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B T
escalate
get
list
patch
update
watchrbac.authorization.k8s.ioclusterroles " 
/registry/clusterroles/system:controller:cronjob-controller
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
$system:controller:cronjob-controller  " *$73e8b9eb-fc34-42c7-bc10-52b70b59906e2 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B +
get
list
update
watchbatchcronjobs>
create
delete
get
list
patch
update
watchbatchjobs 
updatebatchcronjobs/status$
updatebatchcronjobs/finalizers
delete
list pods0
create
patch
update 
events.k8s.ioevents " 
/registry/clusterroles/system:controller:daemon-set-controller
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
'system:controller:daemon-set-controller  " *$154d9ec6-0cb2-41db-ba6c-c6069dc0ad472 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B 0
get
list
watchapps
extensions
daemonsets-
updateapps
extensionsdaemonsets/status1
updateapps
extensionsdaemonsets/finalizers
list
watch nodes,
create
delete
list
patch
watch pods
create pods/bindingL
create
delete
get
list
patch
update
watchappscontrollerrevisions0
create
patch
update 
events.k8s.ioevents " 
/registry/clusterroles/system:controller:deployment-controller
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
'system:controller:deployment-controller  " *$0332e06a-8f2f-42e0-b802-8c067397a48c2 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B 9
get
list
update
watchapps
extensionsdeployments.
updateapps
extensionsdeployments/status2
updateapps
extensionsdeployments/finalizersP
create
delete
get
list
patch
update
watchapps
extensionsreplicasets"
get
list
update
watch pods0
create
patch
update 
events.k8s.ioevents " 
/registry/clusterroles/system:controller:disruption-controller
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
'system:controller:disruption-controller  " *$76d08e73-ee1e-4b23-90fd-025132fa4bb52 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B 1
get
list
watchapps
extensionsdeployments1
get
list
watchapps
extensionsreplicasets,
get
list
watch replicationcontrollers0
get
list
watchpolicypoddisruptionbudgets&
get
list
watchappsstatefulsets-
updatepolicypoddisruptionbudgets/status
get**/scale0
create
patch
update 
events.k8s.ioevents " 
/registry/clusterroles/system:controller:endpoint-controller
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
%system:controller:endpoint-controller  " *$10fccdb2-29d4-413c-921d-158e4dbc2c942 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B $
get
list
watch podsservices0
create
delete
get
list
update 	endpoints 
create endpoints/restricted0
create
patch
update 
events.k8s.ioevents " 
/registry/clusterroles/system:controller:endpointslice-controller
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
*system:controller:endpointslice-controller  " *$e3c8d6f4-3af5-4624-8f1f-4764810208cf2 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B +
get
list
watch nodespodsservices
update services/finalizersE
create
delete
get
list
updatediscovery.k8s.ioendpointslices0
create
patch
update 
events.k8s.ioevents " 
/registry/clusterroles/system:controller:endpointslicemirroring-controller
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
3system:controller:endpointslicemirroring-controller  " *$83fa9ebe-f286-44ee-849c-03f7c285850f2 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B )
get
list
watch 	endpointsservices
update services/finalizers 
update endpoints/finalizersE
create
delete
get
list
updatediscovery.k8s.ioendpointslices0
create
patch
update 
events.k8s.ioevents " 
/registry/clusterroles/system:controller:ephemeral-volume-controller
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
-system:controller:ephemeral-volume-controller  " *$7d00f2a1-6c8c-4e56-8fa2-1134ede5d5e32 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B 
get
list
watch pods
update pods/finalizers4
create
get
list
watch persistentvolumeclaims0
create
patch
update 
events.k8s.ioevents " 
/registry/clusterroles/system:controller:expand-controller
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
#system:controller:expand-controller  " *$189ed15b-2ba6-419e-b6d7-8812e1db493c2 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B 6
get
list
patch
update
watch persistentvolumes0
patch
update persistentvolumeclaims/status,
get
list
watch persistentvolumeclaims2
get
list
watchstorage.k8s.iostorageclasses
get 	endpointsservices
get secrets0
create
patch
update 
events.k8s.ioevents " 
/registry/clusterroles/system:controller:generic-garbage-collector
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
+system:controller:generic-garbage-collector  " *$5294d91c-e70c-4665-8da0-ab1dd626df8d2 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B /
delete
get
list
patch
update
watch**0
create
patch
update 
events.k8s.ioevents " 
/registry/clusterroles/system:controller:horizontal-pod-autoscaler
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
+system:controller:horizontal-pod-autoscaler  " *$f65a56e8-1c05-42df-adb5-0de3a08c6dbc2 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B 9
get
list
watchautoscalinghorizontalpodautoscalers6
updateautoscalinghorizontalpodautoscalers/status
get
update**/scale
list pods8
get services/proxy"http:heapster:"https:heapster:
listmetrics.k8s.iopods%
get
listcustom.metrics.k8s.io*'
get
listexternal.metrics.k8s.io*0
create
patch
update 
events.k8s.ioevents " 
/registry/clusterroles/system:controller:job-controller
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
 system:controller:job-controller  " *$bde592c1-4fd3-4179-9276-fc2c3756f2f02 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B .
get
list
patch
update
watchbatchjobs
updatebatchjobs/status 
updatebatchjobs/finalizers,
create
delete
list
patch
watch pods0
create
patch
update 
events.k8s.ioevents " 
/registry/clusterroles/system:controller:namespace-controller
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
&system:controller:namespace-controller  " *$53ba2b30-a803-440b-8053-f8897714edb72 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B (
delete
get
list
watch 
namespaces2
update namespaces/finalizenamespaces/status+
delete
deletecollection
get
list** " 
/registry/clusterroles/system:controller:node-controller
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
!system:controller:node-controller  " *$1d6be00f-ea6b-4317-bdbf-789d9f2d5a042 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B +
delete
get
list
patch
update nodes
patch
update nodes/status
update pods/status
delete
list pods0
create
patch
update 
events.k8s.ioevents " 
/registry/clusterroles/system:controller:persistent-volume-binder
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
*system:controller:persistent-volume-binder  " *$b11ef073-55e9-4bed-aa7a-24ddbae3c20f2 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B ?
create
delete
get
list
update
watch persistentvolumes$
update persistentvolumes/status4
get
list
update
watch persistentvolumeclaims)
update persistentvolumeclaims/status*
create
delete
get
list
watch pods2
get
list
watchstorage.k8s.iostorageclasses*
create
delete
get
update 	endpoints!
create
delete
get services
get secrets
get
list nodes
watch events0
create
patch
update 
events.k8s.ioevents " 
/registry/clusterroles/system:controller:pod-garbage-collector
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
'system:controller:pod-garbage-collector  " *$7766fb55-c061-4cf4-bbf3-11aa4c9244552 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B 
delete
list
watch pods
get
list nodes " 
/registry/clusterroles/system:controller:pv-protection-controller
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
*system:controller:pv-protection-controller  " *$ec074048-f438-4e61-89b8-7623623468992 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B /
get
list
update
watch persistentvolumes0
create
patch
update 
events.k8s.ioevents " 
/registry/clusterroles/system:controller:pvc-protection-controller
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
+system:controller:pvc-protection-controller  " *$a151ea52-b649-4051-8766-ae37ae4ef22d2 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B 4
get
list
update
watch persistentvolumeclaims
get
list
watch pods0
create
patch
update 
events.k8s.ioevents " 
/registry/clusterroles/system:controller:replicaset-controller
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
'system:controller:replicaset-controller  " *$e00de7d2-71c5-42de-8a3c-4fb831c38a432 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B 9
get
list
update
watchapps
extensionsreplicasets.
updateapps
extensionsreplicasets/status2
updateapps
extensionsreplicasets/finalizers,
create
delete
list
patch
watch pods0
create
patch
update 
events.k8s.ioevents " 
/registry/clusterroles/system:controller:replication-controller
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
(system:controller:replication-controller  " *$c06bcfb2-e40c-4e34-88b3-ff440d8577102 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B 4
get
list
update
watch replicationcontrollers)
update replicationcontrollers/status-
update !replicationcontrollers/finalizers,
create
delete
list
patch
watch pods0
create
patch
update 
events.k8s.ioevents " 
/registry/clusterroles/system:controller:resourcequota-controller
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
*system:controller:resourcequota-controller  " *$1036951e-c52a-44f7-9cff-f09b0d5bc4d52 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B 
list
watch**!
update resourcequotas/status0
create
patch
update 
events.k8s.ioevents " 
/registry/clusterroles/system:controller:root-ca-cert-publisher
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
(system:controller:root-ca-cert-publisher  " *$af32d279-9ef7-464d-80bc-ef5da99f16072 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B 
create
update 
configmaps0
create
patch
update 
events.k8s.ioevents " 
/registry/clusterroles/system:controller:route-controller
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
"system:controller:route-controller  " *$1fa81f04-5881-48be-bd62-5c5b42fad31f2 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B 
list
watch nodes
patch nodes/status0
create
patch
update 
events.k8s.ioevents " 
/registry/clusterroles/system:controller:service-account-controller
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
,system:controller:service-account-controller  " *$847b2736-d41c-464f-a314-a490a587bb762 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B 
create serviceaccounts0
create
patch
update 
events.k8s.ioevents " 
/registry/clusterroles/system:controller:service-controller
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
$system:controller:service-controller  " *$77348490-702d-4169-a098-c716ba3053902 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B 
get
list
watch services"
patch
update services/status
list
watch nodes0
create
patch
update 
events.k8s.ioevents " 
/registry/clusterroles/system:controller:statefulset-controller
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
(system:controller:statefulset-controller  " *$d217ba88-eb55-4892-ac73-0368aae42fc12 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B 
list
watch pods&
get
list
watchappsstatefulsets#
updateappsstatefulsets/status'
updateappsstatefulsets/finalizers,
create
delete
get
patch
update podsL
create
delete
get
list
patch
update
watchappscontrollerrevisions'
create
get persistentvolumeclaims0
create
patch
update 
events.k8s.ioevents " 
/registry/clusterroles/system:controller:ttl-after-finished-controller
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
/system:controller:ttl-after-finished-controller  " *$cc7348c0-9abf-4f9a-a7f1-99e7d21658b02 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B '
delete
get
list
watchbatchjobs0
create
patch
update 
events.k8s.ioevents " 
/registry/clusterroles/system:controller:ttl-controller
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
 system:controller:ttl-controller  " *$ebf99a29-4ee8-42da-b614-03b1e74a95502 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B %
list
patch
update
watch nodes0
create
patch
update 
events.k8s.ioevents " 
/registry/clusterroles/system:discovery
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
system:discovery  " *$516940fd-d905-4fa8-9a83-021c010a48312 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B i
get*/api*/api/**/apis*/apis/**/healthz*/livez*/openapi*
/openapi/**/readyz*/version*	/version/ " 
/registry/clusterroles/system:heapster
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
system:heapster  " *$1ddf7a3a-59d6-4d2d-bbd2-df9958d828262 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B 5
get
list
watch events
namespacesnodespods+
get
list
watch
extensionsdeployments " 
/registry/clusterroles/system:kube-aggregator
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
system:kube-aggregator  " *$30383060-c3ae-405e-be47-d779cc28c5f72 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B )
get
list
watch 	endpointsservices " 
/registry/clusterroles/system:kube-controller-manager
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
system:kube-controller-manager  " *$938fdb73-8c12-468a-b6de-2d50517453a82 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B 0
create
patch
update 
events.k8s.ioevents%
createcoordination.k8s.ioleasesC
get
updatecoordination.k8s.ioleases"kube-controller-manager
create 	endpoints3
get
update 	endpoints"kube-controller-manager$
create secretsserviceaccounts
delete secrets9
get 
configmaps
namespacessecretsserviceaccounts$
update secretsserviceaccounts-
createauthentication.k8s.iotokenreviews4
createauthorization.k8s.iosubjectaccessreviews
list
watch**!
create serviceaccounts/token " 
/registry/clusterroles/system:kube-dns
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
system:kube-dns  " *$7c468568-29f1-4c35-86a4-0ea588767bfe2 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B $
list
watch 	endpointsservices " 
/registry/clusterroles/system:kube-scheduler
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�

�
system:kube-scheduler  " *$e6d16638-8045-40bd-80dd-af1ebfe9e8b72 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B 0
create
patch
update 
events.k8s.ioevents%
createcoordination.k8s.ioleases:
get
updatecoordination.k8s.ioleases"kube-scheduler
create 	endpoints*
get
update 	endpoints"kube-scheduler
get
list
watch nodes"
delete
get
list
watch pods"
create bindingspods/binding
patch
update pods/status6
get
list
watch replicationcontrollersservices1
get
list
watchapps
extensionsreplicasets&
get
list
watchappsstatefulsets0
get
list
watchpolicypoddisruptionbudgets?
get
list
watch persistentvolumeclaimspersistentvolumes-
createauthentication.k8s.iotokenreviews4
createauthorization.k8s.iosubjectaccessreviews,
get
list
watchstorage.k8s.iocsinodes 
get
list
watch 
namespaces.
get
list
watchstorage.k8s.io
csidrivers8
get
list
watchstorage.k8s.iocsistoragecapacities " 
/registry/clusterroles/system:kubelet-api-admin
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
system:kubelet-api-admin  " *$f80e7444-b1a4-47d4-94f9-e873111c04e42 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B 
get
list
watch nodes
proxy nodesE
* 	nodes/log
nodes/metricsnodes/proxy
nodes/specnodes/stats " 
/registry/clusterroles/system:monitoring
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
system:monitoring  " *$7e78f755-0b52-43e5-9159-dba3d540ad782 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B K
get*/healthz*
/healthz/**/livez*/livez/**/metrics*/readyz*	/readyz/* " 
/registry/clusterroles/system:node
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�

�
system:node  " *$6ea62ad5-b19f-43bf-8e97-0d351cb5bb422 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B -
createauthentication.k8s.iotokenreviewsO
createauthorization.k8s.iolocalsubjectaccessreviewssubjectaccessreviews
get
list
watch services#
create
get
list
watch nodes
patch
update nodes/status
patch
update nodes!
create
patch
update events
get
list
watch pods
create
delete pods
patch
update pods/status
create 
pods/eviction)
get
list
watch 
configmapssecrets2
get persistentvolumeclaimspersistentvolumes
get 	endpointsK
create
get
list
watchcertificates.k8s.iocertificatesigningrequestsA
create
delete
get
patch
updatecoordination.k8s.ioleases(
getstorage.k8s.iovolumeattachments!
create serviceaccounts/token5
get
patch
update persistentvolumeclaims/status.
get
list
watchstorage.k8s.io
csidrivers>
create
delete
get
patch
updatestorage.k8s.iocsinodes/
get
list
watchnode.k8s.ioruntimeclasses " 
/registry/clusterroles/system:node-bootstrapper
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
system:node-bootstrapper  " *$ff77ef99-a29d-48f3-b535-15f5ceafded32 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B K
create
get
list
watchcertificates.k8s.iocertificatesigningrequests " 
/registry/clusterroles/system:node-problem-detector
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
system:node-problem-detector  " *$fb9c127a-c546-4a69-a9f1-aacaa78280be2 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B 
get nodes
patch nodes/status0
create
patch
update 
events.k8s.ioevents " 
/registry/clusterroles/system:node-proxier
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
system:node-proxier  " *$241023f0-e6ce-4edd-8aab-80a5af4681f62 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B $
list
watch 	endpointsservices
get
list
watch nodes0
create
patch
update 
events.k8s.ioevents/
list
watchdiscovery.k8s.ioendpointslices " 
/registry/clusterroles/system:persistent-volume-provisioner
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
$system:persistent-volume-provisioner  " *$a99aefee-dc86-41de-9211-680a14eb46ff2 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B 7
create
delete
get
list
watch persistentvolumes4
get
list
update
watch persistentvolumeclaims2
get
list
watchstorage.k8s.iostorageclasses
watch events0
create
patch
update 
events.k8s.ioevents " 
/registry/clusterroles/system:public-info-viewer
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
system:public-info-viewer  " *$851ca22a-e4a8-489e-b589-fc8b2d4395b02 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B 5
get*/healthz*/livez*/readyz*/version*	/version/ " 
/registry/clusterroles/system:service-account-issuer-discovery
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
'system:service-account-issuer-discovery  " *$c59d1b63-5bc5-449a-85da-7a65bdabd8c72 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B 9
get*!/.well-known/openid-configuration*/openid/v1/jwks " 
/registry/clusterroles/system:volume-scheduler
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
system:volume-scheduler  " *$b969679b-3fe7-437e-b6f7-f9de863a7b6c2 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B 6
get
list
patch
update
watch persistentvolumes2
get
list
watchstorage.k8s.iostorageclasses;
get
list
patch
update
watch persistentvolumeclaims " 
/registry/clusterroles/tigera-operator
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�

�
tigera-operator  " *$e34a556c-c2cf-42e0-8393-c48382ac79d82 8 B���� z �^
kubectl-createUpdaterbac.authorization.k8s.io/v1"���� 2FieldsV1:
{"f:rules":{}}B �
create
get
list
update
delete
watch 
namespacespodspodtemplatesservices	endpointsevents
configmapssecretsserviceaccounts$
list
get
watch resourcequotash
create
get
list
update
delete
watch resourcequotas"calico-critical-pods"tigera-critical-pods"
get
patch
list
watch nodes�
create
get
list
update
delete
watch
bind
escalaterbac.authorization.k8s.ioclusterrolesclusterrolebindingsrolebindingsroles^
create
get
list
patch
update
delete
watchappsdeployments
daemonsetsstatefulsets7
updateappsdeployments/finalizers"tigera-operatorH
create
get
list
update
patch
delete
watchoperator.tigera.io*N
create
update
delete
get
list
watchnetworking.k8s.ionetworkpoliciesM
create
patch
list
get
watchcrd.projectcalico.orgfelixconfigurationsd
get
list
watchcrd.projectcalico.orgippoolskubecontrollersconfigurationsbgpconfigurationsN
create
get
list
update
delete
watchscheduling.k8s.iopriorityclassesH
create
get
list
update
delete
watchpolicypoddisruptionbudgetsB
list
watch
create
updateapiregistration.k8s.ioapiservicesG
create
get
list
update
delete
watchcoordination.k8s.ioleasesF
list
watch
update
get
create
deletestorage.k8s.io
csidrivers3
usepolicypodsecuritypolicies"tigera-operatorG
get
list
watch
create
update
deletepolicypodsecuritypolicies>
list
watchcertificates.k8s.iocertificatesigningrequests " 
/registry/clusterroles/view
k8s 
+
rbac.authorization.k8s.io/v1ClusterRole�
�
view  " *$33af327f-2bfa-4fe2-8487-597a67eddf762 8 Bɡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsZ3
+rbac.authorization.k8s.io/aggregate-to-edittrueb3
+rbac.authorization.kubernetes.io/autoupdatetruez �q
"clusterrole-aggregation-controllerApplyrbac.authorization.k8s.io/v1"١�� 2FieldsV1:
{"f:rules":{}}B ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ɡ�� 2FieldsV1:�
�{"f:aggregationRule":{".":{},"f:clusterRoleSelectors":{}},"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{},"f:rbac.authorization.k8s.io/aggregate-to-edit":{}}}}B �
get
list
watch 
configmaps	endpointspersistentvolumeclaimspersistentvolumeclaims/statuspodsreplicationcontrollersreplicationcontrollers/scaleserviceaccountsservicesservices/status�
get
list
watch bindingseventslimitrangesnamespaces/statuspods/logpods/statusreplicationcontrollers/statusresourcequotasresourcequotas/status 
get
list
watch 
namespaces4
get
list
watchdiscovery.k8s.ioendpointslices�
get
list
watchappscontrollerrevisions
daemonsetsdaemonsets/statusdeploymentsdeployments/scaledeployments/statusreplicasetsreplicasets/scalereplicasets/statusstatefulsetsstatefulsets/scalestatefulsets/statusZ
get
list
watchautoscalinghorizontalpodautoscalershorizontalpodautoscalers/statusG
get
list
watchbatchcronjobscronjobs/statusjobsjobs/status�
get
list
watch
extensions
daemonsetsdaemonsets/statusdeploymentsdeployments/scaledeployments/status	ingressesingresses/statusnetworkpoliciesreplicasetsreplicasets/scalereplicasets/statusreplicationcontrollers/scaleM
get
list
watchpolicypoddisruptionbudgetspoddisruptionbudgets/statusS
get
list
watchnetworking.k8s.io	ingressesingresses/statusnetworkpolicies7
5
3
+rbac.authorization.k8s.io/aggregate-to-viewtrue " 
/registry/configmaps/default/kube-root-ca.crt
k8s 

v1	ConfigMap�
�
kube-root-ca.crt default" *$3967ed6d-79fa-4f6c-a252-3e7b01b5b9a42 8 B١�� b�
kubernetes.io/description�Contains a CA bundle that can be used to verify the kube-apiserver when using internal endpoints such as the internal service IP or kubernetes.default.svc. No other usage is guaranteed across distributions of Kubernetes clusters.z ��
kube-controller-managerUpdatev1"١�� 2FieldsV1:l
j{"f:data":{".":{},"f:ca.crt":{}},"f:metadata":{"f:annotations":{".":{},"f:kubernetes.io/description":{}}}}B �
ca.crt�-----BEGIN CERTIFICATE-----
MIIC/jCCAeagAwIBAgIBADANBgkqhkiG9w0BAQsFADAVMRMwEQYDVQQDEwprdWJl
cm5ldGVzMB4XDTIzMTEyMjE0MTIzMFoXDTMzMTExOTE0MTIzMFowFTETMBEGA1UE
AxMKa3ViZXJuZXRlczCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMXN
SkE3tVLEjaBVacT8XXTbbKhlBNP9Y1eTdY3UnoyzVKi7DMhA1MdxgEH7BycY8snf
MHTnUJSknppBxb4fPvkF2qY0kGkwSET72aFPZt7SQGgMUpL84iURtveQoM79r/5z
JpXMGQ6uGWDP8pNHnCWi3c/GRcHgO68Ehwx1r9bznShWxwadPQ8tg1T5DPVzOBzy
ARhH7d6z6Hl/qQwwP3Edp7/FSqYp0IrMP2uB9Zk1YMhXmZktw2h//CDGHjXGHIwa
4NagUj2ON5gIav9+ybcvz2Agtyf9MkAGAhw/WXX9gCCJdiy3quOYGWJnKldiHQiE
i8VKXxmH3DyZLAyNdnUCAwEAAaNZMFcwDgYDVR0PAQH/BAQDAgKkMA8GA1UdEwEB
/wQFMAMBAf8wHQYDVR0OBBYEFG3oilU3UoFMABw3v3WRSIpAMCQMMBUGA1UdEQQO
MAyCCmt1YmVybmV0ZXMwDQYJKoZIhvcNAQELBQADggEBAApnDhMrRWU/+nuQlxG9
DpYLyqlYyvjOQquLZwhmZkXW5MMd2ETcp/XuRWpUWbsGAZlUpAX7AUXLkfpOb1Uw
0mM5rSl/VxL+RNCSoQJlwrRUnXaHjgwzS8o1pod3DDJd9i1QTu1ScDpUyl1iA/yj
56JRqFV/LXh5v/Q/Si5B2zHiuWQaIQ692qj8QZBbUkrSfr4qNxyD4pzCuCPjwS2V
UsnOHBEA1lappxONelPK4nOSfUTfHQXJR+TKjth19aCtc1o21odBiV2VXxrUWCIS
w5Lfwn5v7uzFeTQraJtlqhMPuPuSlRLaPyergtaUd3kwriTY7/d51S+Xy0WzUWDa
laY=
-----END CERTIFICATE-----
 " 
/registry/configmaps/kube-node-lease/kube-root-ca.crt
k8s 

v1	ConfigMap�
�
kube-root-ca.crt kube-node-lease" *$92e2eabd-16d0-42a6-a57c-851f316bfe822 8 B١�� b�
kubernetes.io/description�Contains a CA bundle that can be used to verify the kube-apiserver when using internal endpoints such as the internal service IP or kubernetes.default.svc. No other usage is guaranteed across distributions of Kubernetes clusters.z ��
kube-controller-managerUpdatev1"١�� 2FieldsV1:l
j{"f:data":{".":{},"f:ca.crt":{}},"f:metadata":{"f:annotations":{".":{},"f:kubernetes.io/description":{}}}}B �
ca.crt�-----BEGIN CERTIFICATE-----
MIIC/jCCAeagAwIBAgIBADANBgkqhkiG9w0BAQsFADAVMRMwEQYDVQQDEwprdWJl
cm5ldGVzMB4XDTIzMTEyMjE0MTIzMFoXDTMzMTExOTE0MTIzMFowFTETMBEGA1UE
AxMKa3ViZXJuZXRlczCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMXN
SkE3tVLEjaBVacT8XXTbbKhlBNP9Y1eTdY3UnoyzVKi7DMhA1MdxgEH7BycY8snf
MHTnUJSknppBxb4fPvkF2qY0kGkwSET72aFPZt7SQGgMUpL84iURtveQoM79r/5z
JpXMGQ6uGWDP8pNHnCWi3c/GRcHgO68Ehwx1r9bznShWxwadPQ8tg1T5DPVzOBzy
ARhH7d6z6Hl/qQwwP3Edp7/FSqYp0IrMP2uB9Zk1YMhXmZktw2h//CDGHjXGHIwa
4NagUj2ON5gIav9+ybcvz2Agtyf9MkAGAhw/WXX9gCCJdiy3quOYGWJnKldiHQiE
i8VKXxmH3DyZLAyNdnUCAwEAAaNZMFcwDgYDVR0PAQH/BAQDAgKkMA8GA1UdEwEB
/wQFMAMBAf8wHQYDVR0OBBYEFG3oilU3UoFMABw3v3WRSIpAMCQMMBUGA1UdEQQO
MAyCCmt1YmVybmV0ZXMwDQYJKoZIhvcNAQELBQADggEBAApnDhMrRWU/+nuQlxG9
DpYLyqlYyvjOQquLZwhmZkXW5MMd2ETcp/XuRWpUWbsGAZlUpAX7AUXLkfpOb1Uw
0mM5rSl/VxL+RNCSoQJlwrRUnXaHjgwzS8o1pod3DDJd9i1QTu1ScDpUyl1iA/yj
56JRqFV/LXh5v/Q/Si5B2zHiuWQaIQ692qj8QZBbUkrSfr4qNxyD4pzCuCPjwS2V
UsnOHBEA1lappxONelPK4nOSfUTfHQXJR+TKjth19aCtc1o21odBiV2VXxrUWCIS
w5Lfwn5v7uzFeTQraJtlqhMPuPuSlRLaPyergtaUd3kwriTY7/d51S+Xy0WzUWDa
laY=
-----END CERTIFICATE-----
 " 
/registry/configmaps/kube-public/kube-root-ca.crt
k8s 

v1	ConfigMap�
�
kube-root-ca.crt kube-public" *$3f59802d-5f14-4812-a9ea-40a8a14f0a8b2 8 B١�� b�
kubernetes.io/description�Contains a CA bundle that can be used to verify the kube-apiserver when using internal endpoints such as the internal service IP or kubernetes.default.svc. No other usage is guaranteed across distributions of Kubernetes clusters.z ��
kube-controller-managerUpdatev1"١�� 2FieldsV1:l
j{"f:data":{".":{},"f:ca.crt":{}},"f:metadata":{"f:annotations":{".":{},"f:kubernetes.io/description":{}}}}B �
ca.crt�-----BEGIN CERTIFICATE-----
MIIC/jCCAeagAwIBAgIBADANBgkqhkiG9w0BAQsFADAVMRMwEQYDVQQDEwprdWJl
cm5ldGVzMB4XDTIzMTEyMjE0MTIzMFoXDTMzMTExOTE0MTIzMFowFTETMBEGA1UE
AxMKa3ViZXJuZXRlczCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMXN
SkE3tVLEjaBVacT8XXTbbKhlBNP9Y1eTdY3UnoyzVKi7DMhA1MdxgEH7BycY8snf
MHTnUJSknppBxb4fPvkF2qY0kGkwSET72aFPZt7SQGgMUpL84iURtveQoM79r/5z
JpXMGQ6uGWDP8pNHnCWi3c/GRcHgO68Ehwx1r9bznShWxwadPQ8tg1T5DPVzOBzy
ARhH7d6z6Hl/qQwwP3Edp7/FSqYp0IrMP2uB9Zk1YMhXmZktw2h//CDGHjXGHIwa
4NagUj2ON5gIav9+ybcvz2Agtyf9MkAGAhw/WXX9gCCJdiy3quOYGWJnKldiHQiE
i8VKXxmH3DyZLAyNdnUCAwEAAaNZMFcwDgYDVR0PAQH/BAQDAgKkMA8GA1UdEwEB
/wQFMAMBAf8wHQYDVR0OBBYEFG3oilU3UoFMABw3v3WRSIpAMCQMMBUGA1UdEQQO
MAyCCmt1YmVybmV0ZXMwDQYJKoZIhvcNAQELBQADggEBAApnDhMrRWU/+nuQlxG9
DpYLyqlYyvjOQquLZwhmZkXW5MMd2ETcp/XuRWpUWbsGAZlUpAX7AUXLkfpOb1Uw
0mM5rSl/VxL+RNCSoQJlwrRUnXaHjgwzS8o1pod3DDJd9i1QTu1ScDpUyl1iA/yj
56JRqFV/LXh5v/Q/Si5B2zHiuWQaIQ692qj8QZBbUkrSfr4qNxyD4pzCuCPjwS2V
UsnOHBEA1lappxONelPK4nOSfUTfHQXJR+TKjth19aCtc1o21odBiV2VXxrUWCIS
w5Lfwn5v7uzFeTQraJtlqhMPuPuSlRLaPyergtaUd3kwriTY7/d51S+Xy0WzUWDa
laY=
-----END CERTIFICATE-----
 " 
/registry/configmaps/kube-system/extension-apiserver-authentication
k8s 

v1	ConfigMap�
�
"extension-apiserver-authentication kube-system" *$263e676f-a0a1-4b00-adca-5cd1106ad9502 8 Bȡ�� z ��
kube-apiserverUpdatev1"ȡ�� 2FieldsV1:�
�{"f:data":{".":{},"f:client-ca-file":{},"f:requestheader-allowed-names":{},"f:requestheader-client-ca-file":{},"f:requestheader-extra-headers-prefix":{},"f:requestheader-group-headers":{},"f:requestheader-username-headers":{}}}B �
client-ca-file�-----BEGIN CERTIFICATE-----
MIIC/jCCAeagAwIBAgIBADANBgkqhkiG9w0BAQsFADAVMRMwEQYDVQQDEwprdWJl
cm5ldGVzMB4XDTIzMTEyMjE0MTIzMFoXDTMzMTExOTE0MTIzMFowFTETMBEGA1UE
AxMKa3ViZXJuZXRlczCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMXN
SkE3tVLEjaBVacT8XXTbbKhlBNP9Y1eTdY3UnoyzVKi7DMhA1MdxgEH7BycY8snf
MHTnUJSknppBxb4fPvkF2qY0kGkwSET72aFPZt7SQGgMUpL84iURtveQoM79r/5z
JpXMGQ6uGWDP8pNHnCWi3c/GRcHgO68Ehwx1r9bznShWxwadPQ8tg1T5DPVzOBzy
ARhH7d6z6Hl/qQwwP3Edp7/FSqYp0IrMP2uB9Zk1YMhXmZktw2h//CDGHjXGHIwa
4NagUj2ON5gIav9+ybcvz2Agtyf9MkAGAhw/WXX9gCCJdiy3quOYGWJnKldiHQiE
i8VKXxmH3DyZLAyNdnUCAwEAAaNZMFcwDgYDVR0PAQH/BAQDAgKkMA8GA1UdEwEB
/wQFMAMBAf8wHQYDVR0OBBYEFG3oilU3UoFMABw3v3WRSIpAMCQMMBUGA1UdEQQO
MAyCCmt1YmVybmV0ZXMwDQYJKoZIhvcNAQELBQADggEBAApnDhMrRWU/+nuQlxG9
DpYLyqlYyvjOQquLZwhmZkXW5MMd2ETcp/XuRWpUWbsGAZlUpAX7AUXLkfpOb1Uw
0mM5rSl/VxL+RNCSoQJlwrRUnXaHjgwzS8o1pod3DDJd9i1QTu1ScDpUyl1iA/yj
56JRqFV/LXh5v/Q/Si5B2zHiuWQaIQ692qj8QZBbUkrSfr4qNxyD4pzCuCPjwS2V
UsnOHBEA1lappxONelPK4nOSfUTfHQXJR+TKjth19aCtc1o21odBiV2VXxrUWCIS
w5Lfwn5v7uzFeTQraJtlqhMPuPuSlRLaPyergtaUd3kwriTY7/d51S+Xy0WzUWDa
laY=
-----END CERTIFICATE-----
5
requestheader-allowed-names["front-proxy-client"]�
requestheader-client-ca-file�-----BEGIN CERTIFICATE-----
MIIDCjCCAfKgAwIBAgIBADANBgkqhkiG9w0BAQsFADAZMRcwFQYDVQQDEw5mcm9u
dC1wcm94eS1jYTAeFw0yMzExMjIxNDEyMzZaFw0zMzExMTkxNDEyMzZaMBkxFzAV
BgNVBAMTDmZyb250LXByb3h5LWNhMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB
CgKCAQEA6N6fhpMP5nRmmwRGtLYD/aLAJnanBh07OisWVk1+Q1nw390H7+52Chan
W9QYm8VHQ24mytPgNXEvfKLGh7dHhBjuullD++F8TZ1UmbVcyIvyQKNtCxU8J0RR
03A/pLWgb8Zi+VHNPcrgW6wedu3geKWLLW8lm+65GzWlUqHrBAvQF+YCXfl3LrRD
V7JXmqxL680xRImjfOW8Mg8PlyNNFrebIQDZWrZsc7YIDqWEyhqXJbcQXyaeRQpZ
MwY/5rET1SpxFbkdZa/ndEzCy2Lz9452NoyEHnBxfBvq9VG/CH7khatBInOMqcia
qsyilKfY6EmYqfYdnttHik2ZDBl+8QIDAQABo10wWzAOBgNVHQ8BAf8EBAMCAqQw
DwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUg4xBw3OSWg7mp0INdHV9GgvJv/Qw
GQYDVR0RBBIwEIIOZnJvbnQtcHJveHktY2EwDQYJKoZIhvcNAQELBQADggEBAK79
/qLDEx/CjsRnHCQhTEiJg1d/yaYCn41UVM4rez/UjIfI9bWVcPbHxjQ6uijmGMba
0FhSN98/mypxDoZmnQGtJPM+dDyVLZqZBxvVIdAEHjC8gSDSdTpKnCQhExMNbC70
EfoqrHBRlMB0SvkOsu6/SzWCK6JQMz9REF8tvgtYZBQd3aMjUFRubKXGL4kTkca/
co7oUM1vt90jksgmxZ4JAqUQ6TS39sBfqFoft+6ps35d3EznHxecYCDvfyOTOlMV
1bqYEpMZaO19GzILny/Z0TeZqRuqAbs6eY/4S0I5TN6XGxq0i0RJwxLnX+bBmAJz
HRRCpCEMSuLP9wgOzUI=
-----END CERTIFICATE-----
9
"requestheader-extra-headers-prefix["X-Remote-Extra-"]1
requestheader-group-headers["X-Remote-Group"]3
requestheader-username-headers["X-Remote-User"] " 
/registry/configmaps/kube-system/kube-root-ca.crt
k8s 

v1	ConfigMap�
�
kube-root-ca.crt kube-system" *$28964905-ccc1-4aeb-a483-0ce9622db1332 8 B١�� b�
kubernetes.io/description�Contains a CA bundle that can be used to verify the kube-apiserver when using internal endpoints such as the internal service IP or kubernetes.default.svc. No other usage is guaranteed across distributions of Kubernetes clusters.z ��
kube-controller-managerUpdatev1"١�� 2FieldsV1:l
j{"f:data":{".":{},"f:ca.crt":{}},"f:metadata":{"f:annotations":{".":{},"f:kubernetes.io/description":{}}}}B �
ca.crt�-----BEGIN CERTIFICATE-----
MIIC/jCCAeagAwIBAgIBADANBgkqhkiG9w0BAQsFADAVMRMwEQYDVQQDEwprdWJl
cm5ldGVzMB4XDTIzMTEyMjE0MTIzMFoXDTMzMTExOTE0MTIzMFowFTETMBEGA1UE
AxMKa3ViZXJuZXRlczCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMXN
SkE3tVLEjaBVacT8XXTbbKhlBNP9Y1eTdY3UnoyzVKi7DMhA1MdxgEH7BycY8snf
MHTnUJSknppBxb4fPvkF2qY0kGkwSET72aFPZt7SQGgMUpL84iURtveQoM79r/5z
JpXMGQ6uGWDP8pNHnCWi3c/GRcHgO68Ehwx1r9bznShWxwadPQ8tg1T5DPVzOBzy
ARhH7d6z6Hl/qQwwP3Edp7/FSqYp0IrMP2uB9Zk1YMhXmZktw2h//CDGHjXGHIwa
4NagUj2ON5gIav9+ybcvz2Agtyf9MkAGAhw/WXX9gCCJdiy3quOYGWJnKldiHQiE
i8VKXxmH3DyZLAyNdnUCAwEAAaNZMFcwDgYDVR0PAQH/BAQDAgKkMA8GA1UdEwEB
/wQFMAMBAf8wHQYDVR0OBBYEFG3oilU3UoFMABw3v3WRSIpAMCQMMBUGA1UdEQQO
MAyCCmt1YmVybmV0ZXMwDQYJKoZIhvcNAQELBQADggEBAApnDhMrRWU/+nuQlxG9
DpYLyqlYyvjOQquLZwhmZkXW5MMd2ETcp/XuRWpUWbsGAZlUpAX7AUXLkfpOb1Uw
0mM5rSl/VxL+RNCSoQJlwrRUnXaHjgwzS8o1pod3DDJd9i1QTu1ScDpUyl1iA/yj
56JRqFV/LXh5v/Q/Si5B2zHiuWQaIQ692qj8QZBbUkrSfr4qNxyD4pzCuCPjwS2V
UsnOHBEA1lappxONelPK4nOSfUTfHQXJR+TKjth19aCtc1o21odBiV2VXxrUWCIS
w5Lfwn5v7uzFeTQraJtlqhMPuPuSlRLaPyergtaUd3kwriTY7/d51S+Xy0WzUWDa
laY=
-----END CERTIFICATE-----
 " 
/registry/configmaps/kube-system/kubeadm-config
k8s 

v1	ConfigMap�
�
kubeadm-config kube-system" *$e471a45d-82b8-49bf-a0ca-3b3d93cfb0d62 8 B��� z �^
kubeadmUpdatev1"��� 2FieldsV1:1
/{"f:data":{".":{},"f:ClusterConfiguration":{}}}B �
ClusterConfiguration�apiServer:
  timeoutForControlPlane: 4m0s
apiVersion: kubeadm.k8s.io/v1beta3
certificatesDir: /etc/kubernetes/pki
clusterName: kubernetes
controllerManager: {}
dns: {}
etcd:
  local:
    dataDir: /var/lib/etcd
imageRepository: registry.k8s.io
kind: ClusterConfiguration
kubernetesVersion: v1.24.17
networking:
  dnsDomain: cluster.local
  podSubnet: 192.168.0.0/16
  serviceSubnet: 10.96.0.0/12
scheduler: {}
 " 
/registry/configmaps/kube-system/kubelet-config
k8s 

v1	ConfigMap�

�
kubelet-config kube-system" *$0f384384-d625-4d0a-b34b-1cfb6fed18ad2 8 B��� bv
+kubeadm.kubernetes.io/component-config.hashGsha256:53821686a8ddaca8403df63803a726d2ab31b145c7da69ed7b78c45d2e223a18z ��
kubeadmUpdatev1"��� 2FieldsV1:
}{"f:data":{".":{},"f:kubelet":{}},"f:metadata":{"f:annotations":{".":{},"f:kubeadm.kubernetes.io/component-config.hash":{}}}}B �
kubelet�apiVersion: kubelet.config.k8s.io/v1beta1
authentication:
  anonymous:
    enabled: false
  webhook:
    cacheTTL: 0s
    enabled: true
  x509:
    clientCAFile: /etc/kubernetes/pki/ca.crt
authorization:
  mode: Webhook
  webhook:
    cacheAuthorizedTTL: 0s
    cacheUnauthorizedTTL: 0s
cgroupDriver: systemd
clusterDNS:
- 10.96.0.10
clusterDomain: cluster.local
cpuManagerReconcilePeriod: 0s
evictionPressureTransitionPeriod: 0s
fileCheckFrequency: 0s
healthzBindAddress: 127.0.0.1
healthzPort: 10248
httpCheckFrequency: 0s
imageMinimumGCAge: 0s
kind: KubeletConfiguration
logging:
  flushFrequency: 0
  options:
    json:
      infoBufferSize: "0"
  verbosity: 0
memorySwap: {}
nodeStatusReportFrequency: 0s
nodeStatusUpdateFrequency: 0s
rotateCertificates: true
runtimeRequestTimeout: 0s
shutdownGracePeriod: 0s
shutdownGracePeriodCriticalPods: 0s
staticPodPath: /etc/kubernetes/manifests
streamingConnectionIdleTimeout: 0s
syncFrequency: 0s
volumeStatsAggPeriod: 0s
 " 
/registry/configmaps/tigera-operator/kube-root-ca.crt
k8s 

v1	ConfigMap�
�
kube-root-ca.crt tigera-operator" *$435f2d90-d75c-4083-9264-0b7905a074f72 8 B���� b�
kubernetes.io/description�Contains a CA bundle that can be used to verify the kube-apiserver when using internal endpoints such as the internal service IP or kubernetes.default.svc. No other usage is guaranteed across distributions of Kubernetes clusters.z ��
kube-controller-managerUpdatev1"���� 2FieldsV1:l
j{"f:data":{".":{},"f:ca.crt":{}},"f:metadata":{"f:annotations":{".":{},"f:kubernetes.io/description":{}}}}B �
ca.crt�-----BEGIN CERTIFICATE-----
MIIC/jCCAeagAwIBAgIBADANBgkqhkiG9w0BAQsFADAVMRMwEQYDVQQDEwprdWJl
cm5ldGVzMB4XDTIzMTEyMjE0MTIzMFoXDTMzMTExOTE0MTIzMFowFTETMBEGA1UE
AxMKa3ViZXJuZXRlczCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMXN
SkE3tVLEjaBVacT8XXTbbKhlBNP9Y1eTdY3UnoyzVKi7DMhA1MdxgEH7BycY8snf
MHTnUJSknppBxb4fPvkF2qY0kGkwSET72aFPZt7SQGgMUpL84iURtveQoM79r/5z
JpXMGQ6uGWDP8pNHnCWi3c/GRcHgO68Ehwx1r9bznShWxwadPQ8tg1T5DPVzOBzy
ARhH7d6z6Hl/qQwwP3Edp7/FSqYp0IrMP2uB9Zk1YMhXmZktw2h//CDGHjXGHIwa
4NagUj2ON5gIav9+ybcvz2Agtyf9MkAGAhw/WXX9gCCJdiy3quOYGWJnKldiHQiE
i8VKXxmH3DyZLAyNdnUCAwEAAaNZMFcwDgYDVR0PAQH/BAQDAgKkMA8GA1UdEwEB
/wQFMAMBAf8wHQYDVR0OBBYEFG3oilU3UoFMABw3v3WRSIpAMCQMMBUGA1UdEQQO
MAyCCmt1YmVybmV0ZXMwDQYJKoZIhvcNAQELBQADggEBAApnDhMrRWU/+nuQlxG9
DpYLyqlYyvjOQquLZwhmZkXW5MMd2ETcp/XuRWpUWbsGAZlUpAX7AUXLkfpOb1Uw
0mM5rSl/VxL+RNCSoQJlwrRUnXaHjgwzS8o1pod3DDJd9i1QTu1ScDpUyl1iA/yj
56JRqFV/LXh5v/Q/Si5B2zHiuWQaIQ692qj8QZBbUkrSfr4qNxyD4pzCuCPjwS2V
UsnOHBEA1lappxONelPK4nOSfUTfHQXJR+TKjth19aCtc1o21odBiV2VXxrUWCIS
w5Lfwn5v7uzFeTQraJtlqhMPuPuSlRLaPyergtaUd3kwriTY7/d51S+Xy0WzUWDa
laY=
-----END CERTIFICATE-----
 " 
/registry/csinodes/ip-10-0-133-38
k8s 

storage.k8s.io/v1CSINode�
�
ip-10-0-133-38  " *$543ade0f-5f7d-4b72-8d45-81a32b55d50b2 8 Bȡ�� b�
,storage.alpha.kubernetes.io/migrated-pluginsqkubernetes.io/aws-ebs,kubernetes.io/azure-disk,kubernetes.io/azure-file,kubernetes.io/cinder,kubernetes.io/gce-pdj@
Nodeip-10-0-133-38"$a239d82a-c95c-4b42-80f7-451b0644edc1*v1z ��
kubeletUpdatestorage.k8s.io/v1"ȡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:storage.alpha.kubernetes.io/migrated-plugins":{}},"f:ownerReferences":{".":{},"k:{\"uid\":\"a239d82a-c95c-4b42-80f7-451b0644edc1\"}":{}}}}B   " 
/registry/deployments/tigera-operator/tigera-operator
k8s 

apps/v1
Deployment�
�
tigera-operator tigera-operator" *$34aa4973-2ca9-4626-a277-b5a9e1de98542 8B���� Z
k8s-apptigera-operatorb&
!deployment.kubernetes.io/revision1z ��

kubectl-createUpdateapps/v1"���� 2FieldsV1:�

�
{"f:metadata":{"f:labels":{".":{},"f:k8s-app":{}}},"f:spec":{"f:progressDeadlineSeconds":{},"f:replicas":{},"f:revisionHistoryLimit":{},"f:selector":{},"f:strategy":{"f:rollingUpdate":{".":{},"f:maxSurge":{},"f:maxUnavailable":{}},"f:type":{}},"f:template":{"f:metadata":{"f:labels":{".":{},"f:k8s-app":{},"f:name":{}}},"f:spec":{"f:containers":{"k:{\"name\":\"tigera-operator\"}":{".":{},"f:command":{},"f:env":{".":{},"k:{\"name\":\"OPERATOR_NAME\"}":{".":{},"f:name":{},"f:value":{}},"k:{\"name\":\"POD_NAME\"}":{".":{},"f:name":{},"f:valueFrom":{".":{},"f:fieldRef":{}}},"k:{\"name\":\"TIGERA_OPERATOR_INIT_IMAGE_VERSION\"}":{".":{},"f:name":{},"f:value":{}},"k:{\"name\":\"WATCH_NAMESPACE\"}":{".":{},"f:name":{}}},"f:envFrom":{},"f:image":{},"f:imagePullPolicy":{},"f:name":{},"f:resources":{},"f:terminationMessagePath":{},"f:terminationMessagePolicy":{},"f:volumeMounts":{".":{},"k:{\"mountPath\":\"/var/lib/calico\"}":{".":{},"f:mountPath":{},"f:name":{},"f:readOnly":{}}}}},"f:dnsPolicy":{},"f:hostNetwork":{},"f:nodeSelector":{},"f:restartPolicy":{},"f:schedulerName":{},"f:securityContext":{},"f:serviceAccount":{},"f:serviceAccountName":{},"f:terminationGracePeriodSeconds":{},"f:tolerations":{},"f:volumes":{".":{},"k:{\"name\":\"var-lib-calico\"}":{".":{},"f:hostPath":{".":{},"f:path":{},"f:type":{}},"f:name":{}}}}}}}B ��
kube-controller-managerUpdateapps/v1"�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:deployment.kubernetes.io/revision":{}}},"f:status":{"f:availableReplicas":{},"f:conditions":{".":{},"k:{\"type\":\"Available\"}":{".":{},"f:lastTransitionTime":{},"f:lastUpdateTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}},"k:{\"type\":\"Progressing\"}":{".":{},"f:lastTransitionTime":{},"f:lastUpdateTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}},"f:observedGeneration":{},"f:readyReplicas":{},"f:replicas":{},"f:updatedReplicas":{}}}Bstatus�

nametigera-operator�
G
   " * 2 8 B Z
k8s-apptigera-operatorZ
nametigera-operatorz �
'
var-lib-calico

/var/lib/calico �
tigera-operatorquay.io/tigera/operator:v1.30.9operator* :
WATCH_NAMESPACE :#
POD_NAME 

v1
metadata.name: 

OPERATOR_NAMEtigera-operator:-
"TIGERA_OPERATOR_INIT_IMAGE_VERSIONv1.30.9B J'
var-lib-calico/var/lib/calico" 2 j/dev/termination-logrIfNotPresent� � � �&
 "

kubernetes-services-endpoint�FileAlways 2ClusterFirstWithHostNet:
kubernetes.io/oslinuxBtigera-operatorJtigera-operatorR X` h r � � �default-scheduler�
 Exists "	NoExecute�
 Exists "
NoSchedule� "'

RollingUpdate
	 25%	 25%( 0
8 H�� ( 2�
ProgressingTrue"NewReplicaSetAvailable*DReplicaSet "tigera-operator-5cb8cc79df" has successfully progressed.2���� :���� 2e
	AvailableTrue"MinimumReplicasAvailable*$Deployment has minimum availability.2�� :�� 8 " 
/registry/endpointslices/default/kubernetes
k8s 
)
discovery.k8s.io/v1beta1
EndpointSlice�
�

kubernetes default" *$319cdd72-d0c7-44a5-8e1b-01dcb7b264032 8Bʡ�� Z(
kubernetes.io/service-name
kubernetesz ��
kube-apiserverUpdatediscovery.k8s.io/v1"ʡ�� 2FieldsV1:y
w{"f:addressType":{},"f:endpoints":{},"f:metadata":{"f:labels":{".":{},"f:kubernetes.io/service-name":{}}},"f:ports":{}}B 
10.0.133.38
httpsTCP�2"IPv4 " 
/registry/events/default/ip-10-0-133-38.179ae0244544b61f
k8s 

v1Event�
�
ip-10-0-133-38.179ae0244544b61f default" *$3e674b45-adfa-4c6b-9e45-5cc36bfda8942 8 B�燫 z ��
kubeletUpdatev1"�燫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B .
Node ip-10-0-133-38"ip-10-0-133-38* 2 : Starting"Starting kubelet.*
kubeletip-10-0-133-382�燫 :�燫 @JNormalR b r z  " 
/registry/events/default/ip-10-0-133-38.179ae02448d9a095
k8s 

v1Event�
�
ip-10-0-133-38.179ae02448d9a095 default" *$d8fe155b-e1b3-4085-a8bf-4f61183c30812 8 B�燫 z ��
kubeletUpdatev1"�燫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B .
Node ip-10-0-133-38"ip-10-0-133-38* 2 : InvalidDiskCapacity"&invalid capacity 0 on image filesystem*
kubeletip-10-0-133-382�燫 :�燫 @JWarningR b r z  " 
/registry/events/default/ip-10-0-133-38.179ae0244d89b6e8
k8s 

v1Event�
�
ip-10-0-133-38.179ae0244d89b6e8 default" *$0113a086-4c92-4bdf-b280-4c7f73d52c542 8 B�燫 z ��
kubeletUpdatev1"�燫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B .
Node ip-10-0-133-38"ip-10-0-133-38* 2 : NodeHasSufficientMemory":Node ip-10-0-133-38 status is now: NodeHasSufficientMemory*
kubeletip-10-0-133-382�燫 :�燫 @JNormalR b r z  " 
/registry/events/default/ip-10-0-133-38.179ae0244d89f09a
k8s 

v1Event�
�
ip-10-0-133-38.179ae0244d89f09a default" *$5c8f16c8-b38b-4a76-b287-cdae9b46b99d2 8 B�燫 z ��
kubeletUpdatev1"�燫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B .
Node ip-10-0-133-38"ip-10-0-133-38* 2 : NodeHasNoDiskPressure"8Node ip-10-0-133-38 status is now: NodeHasNoDiskPressure*
kubeletip-10-0-133-382�燫 :�燫 @JNormalR b r z  " 
/registry/events/default/ip-10-0-133-38.179ae0244d8a26f0
k8s 

v1Event�
�
ip-10-0-133-38.179ae0244d8a26f0 default" *$178bfb49-6d29-4fda-a2cc-eb4e61e3c4212 8 B�燫 z ��
kubeletUpdatev1"�燫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B .
Node ip-10-0-133-38"ip-10-0-133-38* 2 : NodeHasSufficientPID"7Node ip-10-0-133-38 status is now: NodeHasSufficientPID*
kubeletip-10-0-133-382�燫 :�燫 @JNormalR b r z  " 
/registry/events/default/ip-10-0-133-38.179ae02472a6e54d
k8s 

v1Event�
�
ip-10-0-133-38.179ae02472a6e54d default" *$734689f5-100f-4512-a3a1-07096e96b6b42 8 B�燫 z ��
kubeletUpdatev1"�燫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B .
Node ip-10-0-133-38"ip-10-0-133-38* 2 : NodeAllocatableEnforced"*Updated Node Allocatable limit across pods*
kubeletip-10-0-133-382�燫 :�燫 @JNormalR b r z  " 
/registry/events/default/ip-10-0-133-38.179ae02e1882a40d
k8s 

v1Event�
�
ip-10-0-133-38.179ae02e1882a40d default" *$cfa31fb0-e0ac-4b34-9d5d-9af754b5fc0e2 8 B�臫 z ��
kube-controller-managerUpdatev1"�臫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{}},"f:type":{}}B F
Node ip-10-0-133-38"$a239d82a-c95c-4b42-80f7-451b0644edc1*v12 : RegisteredNode"GNode ip-10-0-133-38 event: Registered Node ip-10-0-133-38 in Controller*
node-controller 2�臫 :�臫 @JNormalR b r z  " 
/registry/events/default/nginx.179a95fe5eea0291
k8s 

v1Event�
�
nginx.179a95fe5eea0291 default" *$ec0dbea5-2635-4d93-8887-fbb289dc3d412 8 B�ꂫ z ��
kube-schedulerUpdatev1"�ꂫ 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{}},"f:type":{}}B I
Poddefaultnginx"$e5cfcdd3-c721-43db-ba08-2089f8f017a5*v12123891: 	Scheduled"5Successfully assigned default/nginx to ip-10-0-133-38*
default-scheduler 2�ꂫ :�ꂫ @JNormalR b r z  " 
/registry/events/default/nginx.179a95fe902a5c79
k8s 

v1Event�
�
nginx.179a95fe902a5c79 default" *$2fd4226e-4e82-4b00-86ef-d65b604c5d4f2 8 B�ꂫ z ��
kubeletUpdatev1"�ꂫ 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B _
Poddefaultnginx"$e5cfcdd3-c721-43db-ba08-2089f8f017a5*v12123892:spec.containers{nginx}Pulling"Pulling image "nginx"*
kubeletip-10-0-133-382�ꂫ :�ꂫ @JNormalR b r z  " 
/registry/events/default/nginx.179a95ff0634939d
k8s 

v1Event�
�
nginx.179a95ff0634939d default" *$e825d85a-dead-4137-85c1-211b747eb7252 8 B�ꂫ z ��
kubeletUpdatev1"�ꂫ 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B _
Poddefaultnginx"$e5cfcdd3-c721-43db-ba08-2089f8f017a5*v12123892:spec.containers{nginx}Pulled"1Successfully pulled image "nginx" in 1.980351263s*
kubeletip-10-0-133-382�ꂫ :�ꂫ @JNormalR b r z  " 
/registry/events/default/nginx.179a95ff0c0c531b
k8s 

v1Event�
�
nginx.179a95ff0c0c531b default" *$42caf098-b0b9-4fea-9ccc-d2519a50ea3b2 8 B�ꂫ z ��
kubeletUpdatev1"�ꂫ 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B _
Poddefaultnginx"$e5cfcdd3-c721-43db-ba08-2089f8f017a5*v12123892:spec.containers{nginx}Created"Created container nginx*
kubeletip-10-0-133-382�ꂫ :�ꂫ @JNormalR b r z  " 
/registry/events/default/nginx.179a95ff191b153d
k8s 

v1Event�
�
nginx.179a95ff191b153d default" *$a428bad4-0cfb-4656-bdb1-1bb11e73e2e52 8 B�ꂫ z ��
kubeletUpdatev1"�ꂫ 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B _
Poddefaultnginx"$e5cfcdd3-c721-43db-ba08-2089f8f017a5*v12123892:spec.containers{nginx}Started"Started container nginx*
kubeletip-10-0-133-382�ꂫ :�ꂫ @JNormalR b r z  " 
/registry/events/default/nginx.179a9624bee78534
k8s 

v1Event�
�
nginx.179a9624bee78534 default" *$ae324e77-e073-49da-a7eb-003f017e50c32 8 B�삫 z ��
kubeletUpdatev1"�삫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B _
Poddefaultnginx"$e5cfcdd3-c721-43db-ba08-2089f8f017a5*v12123892:spec.containers{nginx}Killing"Stopping container nginx*
kubeletip-10-0-133-382�삫 :�삫 @JNormalR b r z  " 
/registry/events/default/nginx.179a962788266243
k8s 

v1Event�
�
nginx.179a962788266243 default" *$cf5efa29-74f7-43eb-b238-2a5c8facf2ef2 8 B�삫 z ��
kube-schedulerUpdatev1"�삫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{}},"f:type":{}}B I
Poddefaultnginx"$9acc2bda-0001-4ed2-8970-2a2e6e97deae*v12124124: 	Scheduled"5Successfully assigned default/nginx to ip-10-0-133-38*
default-scheduler 2�삫 :�삫 @JNormalR b r z  " 
/registry/events/default/nginx.179a9627b1e4a880
k8s 

v1Event�
�
nginx.179a9627b1e4a880 default" *$0db87372-53b1-4a1c-b362-cc8330023e142 8 B�삫 z ��
kubeletUpdatev1"�삫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B _
Poddefaultnginx"$9acc2bda-0001-4ed2-8970-2a2e6e97deae*v12124125:spec.containers{nginx}Pulling"Pulling image "nginx"*
kubeletip-10-0-133-382�삫 :�삫 @JNormalR b r z  " 
/registry/events/default/nginx.179a96281b5573f9
k8s 

v1Event�
�
nginx.179a96281b5573f9 default" *$f4869ff1-ebcd-42b5-b766-f1f2f3f91e862 8 B�삫 z ��
kubeletUpdatev1"�삫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B _
Poddefaultnginx"$9acc2bda-0001-4ed2-8970-2a2e6e97deae*v12124125:spec.containers{nginx}Pulled"1Successfully pulled image "nginx" in 1.768979981s*
kubeletip-10-0-133-382�삫 :�삫 @JNormalR b r z  " 
/registry/events/default/nginx.179a9628203ef61d
k8s 

v1Event�
�
nginx.179a9628203ef61d default" *$54e4cd2b-8fff-41e2-a624-c2051e03ee932 8 B�삫 z ��
kubeletUpdatev1"�삫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B _
Poddefaultnginx"$9acc2bda-0001-4ed2-8970-2a2e6e97deae*v12124125:spec.containers{nginx}Created"Created container nginx*
kubeletip-10-0-133-382�삫 :�삫 @JNormalR b r z  " 
/registry/events/default/nginx.179a96282b45af75
k8s 

v1Event�
�
nginx.179a96282b45af75 default" *$687a4a9e-ad1b-4b30-aa38-7704a7cf1d492 8 B�삫 z ��
kubeletUpdatev1"�삫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B _
Poddefaultnginx"$9acc2bda-0001-4ed2-8970-2a2e6e97deae*v12124125:spec.containers{nginx}Started"Started container nginx*
kubeletip-10-0-133-382�삫 :�삫 @JNormalR b r z  " 
/registry/events/default/nginx.179ae027b1823c42
k8s 

v1Event�
�
nginx.179ae027b1823c42 default" *$d1f723d7-3576-431c-bca7-d062149d12192 8 B�臫 z ��
kubeletUpdatev1"�臫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B I
Poddefaultnginx"$9acc2bda-0001-4ed2-8970-2a2e6e97deae*v12124136: FailedMount"pMountVolume.SetUp failed for volume "kube-api-access-fc9np" : object "default"/"kube-root-ca.crt" not registered*
kubeletip-10-0-133-382�燫 :�燫 @JWarningR b r z  " 
/registry/events/default/nginx.179ae115021571bb
k8s 

v1Event�
�
nginx.179ae115021571bb default" *$028170b6-b899-4007-b435-737540dea9f32 8 B� z ��
kube-schedulerUpdateevents.k8s.io/v1"� 2FieldsV1:�
�{"f:action":{},"f:eventTime":{},"f:note":{},"f:reason":{},"f:regarding":{},"f:reportingController":{},"f:reportingInstance":{},"f:type":{}}B I
Poddefaultnginx"$8ba6cd0a-ac71-4cd5-87bd-07d6f9b1aa4f*v12126448: 	Scheduled"5Successfully assigned default/nginx to ip-10-0-133-38*
  2 : @ JNormalR��邭bBindingrdefault-schedulerz default-scheduler-ip-10-0-133-38 " 
/registry/events/default/nginx.179ae1152f4caf75
k8s 

v1Event�
�
nginx.179ae1152f4caf75 default" *$5d824ea5-20ce-4117-8ff2-de6f0af765b52 8 B� z ��
kubeletUpdatev1"� 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B _
Poddefaultnginx"$8ba6cd0a-ac71-4cd5-87bd-07d6f9b1aa4f*v12126449:spec.containers{nginx}Pulling"Pulling image "nginx"*
kubeletip-10-0-133-382� :� @JNormalR b r z  " 
/registry/events/default/nginx.179ae1159e73621e
k8s 

v1Event�
�
nginx.179ae1159e73621e default" *$bbcb1d71-c7ab-427a-9ffa-10b5d521f24b2 8 B� z ��
kubeletUpdatev1"� 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B _
Poddefaultnginx"$8ba6cd0a-ac71-4cd5-87bd-07d6f9b1aa4f*v12126449:spec.containers{nginx}Pulled"0Successfully pulled image "nginx" in 1.86479046s*
kubeletip-10-0-133-382� :� @JNormalR b r z  " 
/registry/events/default/nginx.179ae115a21ec512
k8s 

v1Event�
�
nginx.179ae115a21ec512 default" *$74ab4324-faaf-4eb2-be29-336b8b3742342 8 B� z ��
kubeletUpdatev1"� 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B _
Poddefaultnginx"$8ba6cd0a-ac71-4cd5-87bd-07d6f9b1aa4f*v12126449:spec.containers{nginx}Created"Created container nginx*
kubeletip-10-0-133-382� :� @JNormalR b r z  " 
/registry/events/default/nginx.179ae115ad620a42
k8s 

v1Event�
�
nginx.179ae115ad620a42 default" *$fca3d011-ec5c-4e31-9979-7749681820a32 8 B� z ��
kubeletUpdatev1"� 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B _
Poddefaultnginx"$8ba6cd0a-ac71-4cd5-87bd-07d6f9b1aa4f*v12126449:spec.containers{nginx}Started"Started container nginx*
kubeletip-10-0-133-382� :� @JNormalR b r z  " 
/registry/events/kube-system/etcd-ip-10-0-133-38.179ae02493bb50dc
k8s 

v1Event�
�
$etcd-ip-10-0-133-38.179ae02493bb50dc kube-system" *$8d1df658-cb64-47b8-9d69-74219cc1f0ae2 8 B�燫 z ��
kubeletUpdatev1"�燫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B Q
Podkube-systemetcd-ip-10-0-133-38" 5ebf8d52248d4db8f8e59a9bcc33110a*v12 : SandboxChanged"6Pod sandbox changed, it will be killed and re-created.*
kubeletip-10-0-133-382�燫 :�燫 @JNormalR b r z  " 
/registry/events/kube-system/etcd-ip-10-0-133-38.179ae024ccb13450
k8s 

v1Event�
�
$etcd-ip-10-0-133-38.179ae024ccb13450 kube-system" *$6dcc6eb0-84ff-4793-b4ed-d79aee655b0f2 8 B�臫 z ��
kubeletUpdatev1"�臫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B f
Podkube-systemetcd-ip-10-0-133-38" 5ebf8d52248d4db8f8e59a9bcc33110a*v12 :spec.containers{etcd}Pulled"IContainer image "registry.k8s.io/etcd:3.5.6-0" already present on machine*
kubeletip-10-0-133-382�燫 :�燫 @JNormalR b r z  " 
/registry/events/kube-system/etcd-ip-10-0-133-38.179ae024d0ffd3b1
k8s 

v1Event�
�
$etcd-ip-10-0-133-38.179ae024d0ffd3b1 kube-system" *$d09ce561-ae67-451b-a415-356093a0eecc2 8 B�臫 z ��
kubeletUpdatev1"�臫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B f
Podkube-systemetcd-ip-10-0-133-38" 5ebf8d52248d4db8f8e59a9bcc33110a*v12 :spec.containers{etcd}Created"Created container etcd*
kubeletip-10-0-133-382�燫 :�燫 @JNormalR b r z  " 
/registry/events/kube-system/etcd-ip-10-0-133-38.179ae024f0bec5d3
k8s 

v1Event�
�
$etcd-ip-10-0-133-38.179ae024f0bec5d3 kube-system" *$7c3b62b5-aaf7-47f5-a951-47382adbb3af2 8 B�臫 z ��
kubeletUpdatev1"�臫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B f
Podkube-systemetcd-ip-10-0-133-38" 5ebf8d52248d4db8f8e59a9bcc33110a*v12 :spec.containers{etcd}Started"Started container etcd*
kubeletip-10-0-133-382�燫 :�燫 @JNormalR b r z  " 
/registry/events/kube-system/kube-apiserver-ip-10-0-133-38.179ae0249ba1a8dc
k8s 

v1Event�
�
.kube-apiserver-ip-10-0-133-38.179ae0249ba1a8dc kube-system" *$484deeb6-5d9b-40d9-a3e2-e05e425bd0ff2 8 B�臫 z ��
kubeletUpdatev1"�臫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B [
Podkube-systemkube-apiserver-ip-10-0-133-38" 8965a5636981389511c3239fcddf5f8e*v12 : SandboxChanged"6Pod sandbox changed, it will be killed and re-created.*
kubeletip-10-0-133-382�燫 :�燫 @JNormalR b r z  " 
/registry/events/kube-system/kube-apiserver-ip-10-0-133-38.179ae024d76092e3
k8s 

v1Event�
�
.kube-apiserver-ip-10-0-133-38.179ae024d76092e3 kube-system" *$77f9f7cd-9484-4a94-84a9-0dc0e9f1a2e22 8 B�臫 z ��
kubeletUpdatev1"�臫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B z
Podkube-systemkube-apiserver-ip-10-0-133-38" 8965a5636981389511c3239fcddf5f8e*v12 :spec.containers{kube-apiserver}Pulled"TContainer image "registry.k8s.io/kube-apiserver:v1.24.17" already present on machine*
kubeletip-10-0-133-382�燫 :�燫 @JNormalR b r z  " 
/registry/events/kube-system/kube-apiserver-ip-10-0-133-38.179ae024dc3d2328
k8s 

v1Event�
�
.kube-apiserver-ip-10-0-133-38.179ae024dc3d2328 kube-system" *$acf70074-0951-41e8-a118-35deca710caf2 8 B�臫 z ��
kubeletUpdatev1"�臫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B z
Podkube-systemkube-apiserver-ip-10-0-133-38" 8965a5636981389511c3239fcddf5f8e*v12 :spec.containers{kube-apiserver}Created" Created container kube-apiserver*
kubeletip-10-0-133-382�燫 :�燫 @JNormalR b r z  " 
/registry/events/kube-system/kube-apiserver-ip-10-0-133-38.179ae024f8dbd311
k8s 

v1Event�
�
.kube-apiserver-ip-10-0-133-38.179ae024f8dbd311 kube-system" *$ac95062a-474c-4e26-bded-005d03c3eebf2 8 B�臫 z ��
kubeletUpdatev1"�臫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B z
Podkube-systemkube-apiserver-ip-10-0-133-38" 8965a5636981389511c3239fcddf5f8e*v12 :spec.containers{kube-apiserver}Started" Started container kube-apiserver*
kubeletip-10-0-133-382�燫 :�燫 @JNormalR b r z  " 
/registry/events/kube-system/kube-controller-manager-ip-10-0-133-38.179ae0249afb2449
k8s 

v1Event�
�
7kube-controller-manager-ip-10-0-133-38.179ae0249afb2449 kube-system" *$6600f9aa-b487-413b-addf-493d5893e13e2 8 B�臫 z ��
kubeletUpdatev1"�臫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B d
Podkube-system&kube-controller-manager-ip-10-0-133-38" c4784908e2b7b493f5fa279db5705588*v12 : SandboxChanged"6Pod sandbox changed, it will be killed and re-created.*
kubeletip-10-0-133-382�燫 :�燫 @JNormalR b r z  " 
/registry/events/kube-system/kube-controller-manager-ip-10-0-133-38.179ae024d3addd33
k8s 

v1Event�
�
7kube-controller-manager-ip-10-0-133-38.179ae024d3addd33 kube-system" *$c02e8832-fba5-40bc-9fe1-d57389245a1a2 8 B�臫 z ��
kubeletUpdatev1"�臫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B �
Podkube-system&kube-controller-manager-ip-10-0-133-38" c4784908e2b7b493f5fa279db5705588*v12 :(spec.containers{kube-controller-manager}Pulled"]Container image "registry.k8s.io/kube-controller-manager:v1.24.17" already present on machine*
kubeletip-10-0-133-382�燫 :�燫 @JNormalR b r z  " 
/registry/events/kube-system/kube-controller-manager-ip-10-0-133-38.179ae024d9426c30
k8s 

v1Event�
�
7kube-controller-manager-ip-10-0-133-38.179ae024d9426c30 kube-system" *$40ee5471-d716-4f90-9c54-a1b70bd6eb662 8 B�臫 z ��
kubeletUpdatev1"�臫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B �
Podkube-system&kube-controller-manager-ip-10-0-133-38" c4784908e2b7b493f5fa279db5705588*v12 :(spec.containers{kube-controller-manager}Created")Created container kube-controller-manager*
kubeletip-10-0-133-382�燫 :�燫 @JNormalR b r z  " 
/registry/events/kube-system/kube-controller-manager-ip-10-0-133-38.179ae024f2f10408
k8s 

v1Event�
�
7kube-controller-manager-ip-10-0-133-38.179ae024f2f10408 kube-system" *$89cfc783-f8f4-401c-a61c-5bdd743f37ad2 8 B�臫 z ��
kubeletUpdatev1"�臫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B �
Podkube-system&kube-controller-manager-ip-10-0-133-38" c4784908e2b7b493f5fa279db5705588*v12 :(spec.containers{kube-controller-manager}Started")Started container kube-controller-manager*
kubeletip-10-0-133-382�燫 :�燫 @JNormalR b r z  " 
/registry/events/kube-system/kube-controller-manager.179ae02b6ecc4e59
k8s 

v1Event�
�
(kube-controller-manager.179ae02b6ecc4e59 kube-system" *$cecdc51e-a567-458d-8884-e253819f611b2 8 B�臫 z ��
kube-controller-managerUpdatev1"�臫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{}},"f:type":{}}B u
Leasekube-systemkube-controller-manager"$9cc820cc-472f-4425-99c5-3dfe6297508e*coordination.k8s.io/v12125174: LeaderElection"Aip-10-0-133-38_4342807c-1a57-479d-a849-e2a2d6463863 became leader*
kube-controller-manager 2�臫 :�臫 @JNormalR b r z  " 
/registry/events/kube-system/kube-scheduler-ip-10-0-133-38.179ae02497630980
k8s 

v1Event�
�
.kube-scheduler-ip-10-0-133-38.179ae02497630980 kube-system" *$80e5a71c-55dd-4737-ac6a-f02f5439cf652 8 B�臫 z ��
kubeletUpdatev1"�臫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B [
Podkube-systemkube-scheduler-ip-10-0-133-38" ea8f832c8fa96aacc328f67a7a5608f4*v12 : SandboxChanged"6Pod sandbox changed, it will be killed and re-created.*
kubeletip-10-0-133-382�燫 :�燫 @JNormalR b r z  " 
/registry/events/kube-system/kube-scheduler-ip-10-0-133-38.179ae024d37538f6
k8s 

v1Event�
�
.kube-scheduler-ip-10-0-133-38.179ae024d37538f6 kube-system" *$c864f99c-0ed2-413c-9b78-7853df0574b02 8 B�臫 z ��
kubeletUpdatev1"�臫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B z
Podkube-systemkube-scheduler-ip-10-0-133-38" ea8f832c8fa96aacc328f67a7a5608f4*v12 :spec.containers{kube-scheduler}Pulled"TContainer image "registry.k8s.io/kube-scheduler:v1.24.17" already present on machine*
kubeletip-10-0-133-382�燫 :�燫 @JNormalR b r z  " 
/registry/events/kube-system/kube-scheduler-ip-10-0-133-38.179ae024d9c765a6
k8s 

v1Event�
�
.kube-scheduler-ip-10-0-133-38.179ae024d9c765a6 kube-system" *$b2cb0c10-e97d-4d9d-81a4-bab2e78981462 8 B�臫 z ��
kubeletUpdatev1"�臫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B z
Podkube-systemkube-scheduler-ip-10-0-133-38" ea8f832c8fa96aacc328f67a7a5608f4*v12 :spec.containers{kube-scheduler}Created" Created container kube-scheduler*
kubeletip-10-0-133-382�燫 :�燫 @JNormalR b r z  " 
/registry/events/kube-system/kube-scheduler-ip-10-0-133-38.179ae024f8af8c0f
k8s 

v1Event�
�
.kube-scheduler-ip-10-0-133-38.179ae024f8af8c0f kube-system" *$d652f48c-962c-470d-bfbf-06fb0c24c6252 8 B�臫 z ��
kubeletUpdatev1"�臫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B z
Podkube-systemkube-scheduler-ip-10-0-133-38" ea8f832c8fa96aacc328f67a7a5608f4*v12 :spec.containers{kube-scheduler}Started" Started container kube-scheduler*
kubeletip-10-0-133-382�燫 :�燫 @JNormalR b r z  " 
/registry/events/kube-system/kube-scheduler.179ae0276cee6a8f
k8s 

v1Event�
�
kube-scheduler.179ae0276cee6a8f kube-system" *$43b4d498-75cf-40d1-b1dc-67bea1ee71872 8 B�燫 z ��
kube-schedulerUpdatev1"�燫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{}},"f:type":{}}B l
Leasekube-systemkube-scheduler"$fc359e26-a772-449d-82a5-cdc93552f559*coordination.k8s.io/v12125107: LeaderElection"Aip-10-0-133-38_2474c201-a5b3-49df-ad5d-fc57d15b0de6 became leader*
default-scheduler 2�燫 :�燫 @JNormalR b r z  " 
/registry/events/tigera-operator/tigera-operator-5cb8cc79df-n82th.179a9372c6127a9b
k8s 

v1Event�
�
1tigera-operator-5cb8cc79df-n82th.179a9372c6127a9b tigera-operator" *$fb038a68-25a9-493c-a0f0-aa3b225cd5b62 8 B�Ղ� z ��
kubeletUpdatev1"�Ղ� 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B �
Podtigera-operator tigera-operator-5cb8cc79df-n82th"$426cee6c-47e5-4682-9bd1-0c1840125a9a*v12120141: spec.containers{tigera-operator}Pulled"LContainer image "quay.io/tigera/operator:v1.30.9" already present on machine*
kubeletip-10-0-133-382�Ղ� :���� @	JNormalR b r z  " 
/registry/events/tigera-operator/tigera-operator-5cb8cc79df-n82th.179a9372cc3d1cba
k8s 

v1Event�
�
1tigera-operator-5cb8cc79df-n82th.179a9372cc3d1cba tigera-operator" *$b98b4d77-c00e-4831-a0f5-c201b983ab7d2 8 B�Ղ� z ��
kubeletUpdatev1"�Ղ� 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B �
Podtigera-operator tigera-operator-5cb8cc79df-n82th"$426cee6c-47e5-4682-9bd1-0c1840125a9a*v12120141: spec.containers{tigera-operator}Created"!Created container tigera-operator*
kubeletip-10-0-133-382�Ղ� :�ւ� @JNormalR b r z  " 
/registry/events/tigera-operator/tigera-operator-5cb8cc79df-n82th.179a9372da5ef73d
k8s 

v1Event�
�
1tigera-operator-5cb8cc79df-n82th.179a9372da5ef73d tigera-operator" *$6569c563-0c47-4b07-a5f0-fe5f9aef895f2 8 B�Ղ� z ��
kubeletUpdatev1"�Ղ� 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B �
Podtigera-operator tigera-operator-5cb8cc79df-n82th"$426cee6c-47e5-4682-9bd1-0c1840125a9a*v12120141: spec.containers{tigera-operator}Started"!Started container tigera-operator*
kubeletip-10-0-133-382�Ղ� :�ւ� @JNormalR b r z  " 
/registry/events/tigera-operator/tigera-operator-5cb8cc79df-n82th.179a937a25afbc7b
k8s 

v1Event�
�
1tigera-operator-5cb8cc79df-n82th.179a937a25afbc7b tigera-operator" *$77a7b658-fbe2-4404-a810-db36cf8d96cf2 8 B�Ղ� z ��
kubeletUpdatev1"�Ղ� 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B �
Podtigera-operator tigera-operator-5cb8cc79df-n82th"$426cee6c-47e5-4682-9bd1-0c1840125a9a*v12120141: spec.containers{tigera-operator}BackOff"$Back-off restarting failed container*
kubeletip-10-0-133-382�Ղ� :�� @�JWarningR b r z  " 
/registry/events/tigera-operator/tigera-operator-5cb8cc79df-n82th.179ae027af86b9f9
k8s 

v1Event�
�
1tigera-operator-5cb8cc79df-n82th.179ae027af86b9f9 tigera-operator" *$4af64652-8150-4f00-a340-a44b74d8a3572 8 B�臫 z ��
kubeletUpdatev1"�臫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B l
Podtigera-operator tigera-operator-5cb8cc79df-n82th"$426cee6c-47e5-4682-9bd1-0c1840125a9a*v12124863: SandboxChanged"6Pod sandbox changed, it will be killed and re-created.*
kubeletip-10-0-133-382�燫 :�燫 @JNormalR b r z  " 
/registry/events/tigera-operator/tigera-operator-5cb8cc79df-n82th.179ae027e9f6340c
k8s 

v1Event�
�
1tigera-operator-5cb8cc79df-n82th.179ae027e9f6340c tigera-operator" *$d523217c-c07e-4ad2-973a-f67cd5ddc9b22 8 B�臫 z ��
kubeletUpdatev1"�臫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B �
Podtigera-operator tigera-operator-5cb8cc79df-n82th"$426cee6c-47e5-4682-9bd1-0c1840125a9a*v12124863: spec.containers{tigera-operator}Pulled"LContainer image "quay.io/tigera/operator:v1.30.9" already present on machine*
kubeletip-10-0-133-382�燫 :�� @	JNormalR b r z  " 
/registry/events/tigera-operator/tigera-operator-5cb8cc79df-n82th.179ae027f0427dbe
k8s 

v1Event�
�
1tigera-operator-5cb8cc79df-n82th.179ae027f0427dbe tigera-operator" *$0ed3beec-a36e-4e4d-a775-ae94c6a4a10e2 8 B�臫 z ��
kubeletUpdatev1"�臫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B �
Podtigera-operator tigera-operator-5cb8cc79df-n82th"$426cee6c-47e5-4682-9bd1-0c1840125a9a*v12124863: spec.containers{tigera-operator}Created"!Created container tigera-operator*
kubeletip-10-0-133-382�燫 :�釫 @JNormalR b r z  " 
/registry/events/tigera-operator/tigera-operator-5cb8cc79df-n82th.179ae0280055a8d7
k8s 

v1Event�
�
1tigera-operator-5cb8cc79df-n82th.179ae0280055a8d7 tigera-operator" *$10911b6e-3d64-4d70-a679-f737983f22302 8 B�臫 z ��
kubeletUpdatev1"�臫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B �
Podtigera-operator tigera-operator-5cb8cc79df-n82th"$426cee6c-47e5-4682-9bd1-0c1840125a9a*v12124863: spec.containers{tigera-operator}Started"!Started container tigera-operator*
kubeletip-10-0-133-382�燫 :�釫 @JNormalR b r z  " 
/registry/events/tigera-operator/tigera-operator-5cb8cc79df-n82th.179ae02f5a1c1ee5
k8s 

v1Event�
�
1tigera-operator-5cb8cc79df-n82th.179ae02f5a1c1ee5 tigera-operator" *$de917e19-b611-49b8-a18d-8851d7af85262 8 B�臫 z ��
kubeletUpdatev1"�臫 2FieldsV1:�
�{"f:count":{},"f:firstTimestamp":{},"f:involvedObject":{},"f:lastTimestamp":{},"f:message":{},"f:reason":{},"f:source":{"f:component":{},"f:host":{}},"f:type":{}}B �
Podtigera-operator tigera-operator-5cb8cc79df-n82th"$426cee6c-47e5-4682-9bd1-0c1840125a9a*v12124863: spec.containers{tigera-operator}BackOff"$Back-off restarting failed container*
kubeletip-10-0-133-382�臫 :�� @KJWarningR b r z  " 
/registry/flowschemas/catch-all
k8s 
2
$flowcontrol.apiserver.k8s.io/v1beta1
FlowSchema�
�
	catch-all  " *$d668418a-6189-4b8d-94fa-7e9cbad28fe12 8Bȡ�� b)
!apf.kubernetes.io/autoupdate-spectruez ��
,api-priority-and-fairness-config-consumer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:status":{"f:conditions":{".":{},"k:{\"type\":\"Dangling\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}}Bstatus��
,api-priority-and-fairness-config-producer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:apf.kubernetes.io/autoupdate-spec":{}}},"f:spec":{"f:distinguisherMethod":{".":{},"f:type":{}},"f:matchingPrecedence":{},"f:priorityLevelConfiguration":{"f:name":{}},"f:rules":{}}}B x

	catch-all�N
ByUser"\
!
Group
system:unauthenticated

Group
system:authenticated
*** **
*2*�
�
DanglingFalseȡ�� "Found*`This FlowSchema references the PriorityLevelConfiguration object named "catch-all" and it exists " 
/registry/flowschemas/endpoint-controller
k8s 
2
$flowcontrol.apiserver.k8s.io/v1beta1
FlowSchema�
�
endpoint-controller  " *$89dc60cf-fa6d-4ca1-8417-35cb49bf6b3d2 8Bȡ�� b)
!apf.kubernetes.io/autoupdate-spectruez ��
,api-priority-and-fairness-config-consumer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:status":{"f:conditions":{".":{},"k:{\"type\":\"Dangling\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}}Bstatus��
,api-priority-and-fairness-config-producer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:apf.kubernetes.io/autoupdate-spec":{}}},"f:spec":{"f:distinguisherMethod":{".":{},"f:type":{}},"f:matchingPrecedence":{},"f:priorityLevelConfiguration":{"f:name":{}},"f:rules":{}}}B �


workload-high�
ByUser"�
(
User 
system:kube-controller-manager
4
ServiceAccount""
kube-systemendpoint-controller
B
ServiceAccount"0
kube-system!endpointslicemirroring-controller'
get
create
update 	endpoints  **�
�
DanglingFalseȡ�� "Found*dThis FlowSchema references the PriorityLevelConfiguration object named "workload-high" and it exists " 
/registry/flowschemas/exempt
k8s 
2
$flowcontrol.apiserver.k8s.io/v1beta1
FlowSchema�
�
exempt  " *$14468340-a953-49e1-9202-53bbe73497302 8Bȡ�� b)
!apf.kubernetes.io/autoupdate-spectruez ��
,api-priority-and-fairness-config-consumer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:status":{"f:conditions":{".":{},"k:{\"type\":\"Dangling\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}}Bstatus��
,api-priority-and-fairness-config-producer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:apf.kubernetes.io/autoupdate-spec":{}}},"f:spec":{"f:matchingPrecedence":{},"f:priorityLevelConfiguration":{"f:name":{}},"f:rules":{}}}B A

exempt"3

Group
system:masters
*** **
*2*�
�
DanglingFalseȡ�� "Found*]This FlowSchema references the PriorityLevelConfiguration object named "exempt" and it exists " 
/registry/flowschemas/global-default
k8s 
2
$flowcontrol.apiserver.k8s.io/v1beta1
FlowSchema�
�
global-default  " *$a48ca5f1-5e1f-4744-b94d-3dbe0c9433532 8Bȡ�� b)
!apf.kubernetes.io/autoupdate-spectruez ��
,api-priority-and-fairness-config-consumer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:status":{"f:conditions":{".":{},"k:{\"type\":\"Dangling\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}}Bstatus��
,api-priority-and-fairness-config-producer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:apf.kubernetes.io/autoupdate-spec":{}}},"f:spec":{"f:distinguisherMethod":{".":{},"f:type":{}},"f:matchingPrecedence":{},"f:priorityLevelConfiguration":{"f:name":{}},"f:rules":{}}}B }

global-default�M
ByUser"\
!
Group
system:unauthenticated

Group
system:authenticated
*** **
*2*�
�
DanglingFalseȡ�� "Found*eThis FlowSchema references the PriorityLevelConfiguration object named "global-default" and it exists " 
/registry/flowschemas/kube-controller-manager
k8s 
2
$flowcontrol.apiserver.k8s.io/v1beta1
FlowSchema�
�
kube-controller-manager  " *$dabdc6ee-b2c3-469c-8d2c-83124a1a111e2 8Bȡ�� b)
!apf.kubernetes.io/autoupdate-spectruez ��
,api-priority-and-fairness-config-consumer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:status":{"f:conditions":{".":{},"k:{\"type\":\"Dangling\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}}Bstatus��
,api-priority-and-fairness-config-producer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:apf.kubernetes.io/autoupdate-spec":{}}},"f:spec":{"f:distinguisherMethod":{".":{},"f:type":{}},"f:matchingPrecedence":{},"f:priorityLevelConfiguration":{"f:name":{}},"f:rules":{}}}B g


workload-high�

ByNamespace"B
(
User 
system:kube-controller-manager
*** **
*2*�
�
DanglingFalseȡ�� "Found*dThis FlowSchema references the PriorityLevelConfiguration object named "workload-high" and it exists " 
/registry/flowschemas/kube-scheduler
k8s 
2
$flowcontrol.apiserver.k8s.io/v1beta1
FlowSchema�
�
kube-scheduler  " *$aa5a015d-77b1-4fe4-a7cf-a3309bb743752 8Bȡ�� b)
!apf.kubernetes.io/autoupdate-spectruez ��
,api-priority-and-fairness-config-consumer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:status":{"f:conditions":{".":{},"k:{\"type\":\"Dangling\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}}Bstatus��
,api-priority-and-fairness-config-producer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:apf.kubernetes.io/autoupdate-spec":{}}},"f:spec":{"f:distinguisherMethod":{".":{},"f:type":{}},"f:matchingPrecedence":{},"f:priorityLevelConfiguration":{"f:name":{}},"f:rules":{}}}B ^


workload-high�

ByNamespace"9

User
system:kube-scheduler
*** **
*2*�
�
DanglingFalseȡ�� "Found*dThis FlowSchema references the PriorityLevelConfiguration object named "workload-high" and it exists " 
/registry/flowschemas/kube-system-service-accounts
k8s 
2
$flowcontrol.apiserver.k8s.io/v1beta1
FlowSchema�
�
kube-system-service-accounts  " *$c01b1a33-29cb-43b2-8791-b52c905ebaf52 8Bȡ�� b)
!apf.kubernetes.io/autoupdate-spectruez ��
,api-priority-and-fairness-config-consumer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:status":{"f:conditions":{".":{},"k:{\"type\":\"Dangling\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}}Bstatus��
,api-priority-and-fairness-config-producer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:apf.kubernetes.io/autoupdate-spec":{}}},"f:spec":{"f:distinguisherMethod":{".":{},"f:type":{}},"f:matchingPrecedence":{},"f:priorityLevelConfiguration":{"f:name":{}},"f:rules":{}}}B a


workload-high�

ByNamespace"<
"
ServiceAccount"
kube-system*
*** **
*2*�
�
DanglingFalseȡ�� "Found*dThis FlowSchema references the PriorityLevelConfiguration object named "workload-high" and it exists " 
/registry/flowschemas/probes
k8s 
2
$flowcontrol.apiserver.k8s.io/v1beta1
FlowSchema�
�
probes  " *$ba93cb17-48c2-4c82-913c-f8a05d4f6a462 8Bȡ�� b)
!apf.kubernetes.io/autoupdate-spectruez ��
,api-priority-and-fairness-config-consumer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:status":{"f:conditions":{".":{},"k:{\"type\":\"Dangling\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}}Bstatus��
,api-priority-and-fairness-config-producer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:apf.kubernetes.io/autoupdate-spec":{}}},"f:spec":{"f:matchingPrecedence":{},"f:priorityLevelConfiguration":{"f:name":{}},"f:rules":{}}}B t

exempt"f
!
Group
system:unauthenticated

Group
system:authenticated 
get2/healthz2/readyz2/livez�
�
DanglingFalseȡ�� "Found*]This FlowSchema references the PriorityLevelConfiguration object named "exempt" and it exists " 
/registry/flowschemas/service-accounts
k8s 
2
$flowcontrol.apiserver.k8s.io/v1beta1
FlowSchema�
�
service-accounts  " *$02d2743d-b039-4993-99c4-319198cf9dd02 8Bȡ�� b)
!apf.kubernetes.io/autoupdate-spectruez ��
,api-priority-and-fairness-config-consumer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:status":{"f:conditions":{".":{},"k:{\"type\":\"Dangling\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}}Bstatus��
,api-priority-and-fairness-config-producer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:apf.kubernetes.io/autoupdate-spec":{}}},"f:spec":{"f:distinguisherMethod":{".":{},"f:type":{}},"f:matchingPrecedence":{},"f:priorityLevelConfiguration":{"f:name":{}},"f:rules":{}}}B Z

workload-low�F
ByUser";
!
Group
system:serviceaccounts
*** **
*2*�
�
DanglingFalseȡ�� "Found*cThis FlowSchema references the PriorityLevelConfiguration object named "workload-low" and it exists " 
/registry/flowschemas/system-leader-election
k8s 
2
$flowcontrol.apiserver.k8s.io/v1beta1
FlowSchema�
�
system-leader-election  " *$7e29b2db-4fd1-4009-9b5f-e9db0575ac672 8Bȡ�� b)
!apf.kubernetes.io/autoupdate-spectruez ��
,api-priority-and-fairness-config-consumer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:status":{"f:conditions":{".":{},"k:{\"type\":\"Dangling\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}}Bstatus��
,api-priority-and-fairness-config-producer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:apf.kubernetes.io/autoupdate-spec":{}}},"f:spec":{"f:distinguisherMethod":{".":{},"f:type":{}},"f:matchingPrecedence":{},"f:priorityLevelConfiguration":{"f:name":{}},"f:rules":{}}}B �

leader-electiond
ByUser"�
(
User 
system:kube-controller-manager

User
system:kube-scheduler
"
ServiceAccount"
kube-system*7
get
create
updatecoordination.k8s.ioleases  **�
�
DanglingFalseȡ�� "Found*fThis FlowSchema references the PriorityLevelConfiguration object named "leader-election" and it exists " 
/registry/flowschemas/system-node-high
k8s 
2
$flowcontrol.apiserver.k8s.io/v1beta1
FlowSchema�
�
system-node-high  " *$cda4d978-4d4f-4a70-8b2d-40aaade6dc072 8Bȡ�� b)
!apf.kubernetes.io/autoupdate-spectruez ��
,api-priority-and-fairness-config-consumer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:status":{"f:conditions":{".":{},"k:{\"type\":\"Dangling\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}}Bstatus��
,api-priority-and-fairness-config-producer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:apf.kubernetes.io/autoupdate-spec":{}}},"f:spec":{"f:distinguisherMethod":{".":{},"f:type":{}},"f:matchingPrecedence":{},"f:priorityLevelConfiguration":{"f:name":{}},"f:rules":{}}}B }

	node-high�
ByUser"a

Group
system:nodes
* nodesnodes/status **%
*coordination.k8s.ioleases  **�
�
DanglingFalseȡ�� "Found*`This FlowSchema references the PriorityLevelConfiguration object named "node-high" and it exists " 
/registry/flowschemas/system-nodes
k8s 
2
$flowcontrol.apiserver.k8s.io/v1beta1
FlowSchema�
�
system-nodes  " *$eb5df7e8-06f6-438d-b92b-ade236d974842 8Bȡ�� b)
!apf.kubernetes.io/autoupdate-spectruez ��
,api-priority-and-fairness-config-consumer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:status":{"f:conditions":{".":{},"k:{\"type\":\"Dangling\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}}Bstatus��
,api-priority-and-fairness-config-producer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:apf.kubernetes.io/autoupdate-spec":{}}},"f:spec":{"f:distinguisherMethod":{".":{},"f:type":{}},"f:matchingPrecedence":{},"f:priorityLevelConfiguration":{"f:name":{}},"f:rules":{}}}B J

system�
ByUser"1

Group
system:nodes
*** **
*2*�
�
DanglingFalseȡ�� "Found*]This FlowSchema references the PriorityLevelConfiguration object named "system" and it exists " 
/registry/flowschemas/workload-leader-election
k8s 
2
$flowcontrol.apiserver.k8s.io/v1beta1
FlowSchema�
�
workload-leader-election  " *$dfc5054b-c2b9-4f06-a296-dd7345b420c62 8Bȡ�� b)
!apf.kubernetes.io/autoupdate-spectruez ��
,api-priority-and-fairness-config-consumer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:status":{"f:conditions":{".":{},"k:{\"type\":\"Dangling\"}":{".":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{},"f:type":{}}}}}Bstatus��
,api-priority-and-fairness-config-producer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:apf.kubernetes.io/autoupdate-spec":{}}},"f:spec":{"f:distinguisherMethod":{".":{},"f:type":{}},"f:matchingPrecedence":{},"f:priorityLevelConfiguration":{"f:name":{}},"f:rules":{}}}B �

leader-election�
ByUser"�
"
ServiceAccount"
kube-system*3
get
create
update 	endpoints
configmaps  **7
get
create
updatecoordination.k8s.ioleases  **�
�
DanglingFalseȡ�� "Found*fThis FlowSchema references the PriorityLevelConfiguration object named "leader-election" and it exists " 
/registry/leases/kube-node-lease/ip-10-0-133-38
k8s 

coordination.k8s.io/v1Lease�
�
ip-10-0-133-38 kube-node-lease" *$2e600943-6c3b-4723-89d3-7c19645eb3e42 8 Bӡ�� j@
Nodeip-10-0-133-38"$a239d82a-c95c-4b42-80f7-451b0644edc1*v1z ��
kubeletUpdatecoordination.k8s.io/v1"ӡ�� 2FieldsV1:�
�{"f:metadata":{"f:ownerReferences":{".":{},"k:{\"uid\":\"a239d82a-c95c-4b42-80f7-451b0644edc1\"}":{}}},"f:spec":{"f:holderIdentity":{},"f:leaseDurationSeconds":{},"f:renewTime":{}}}B  
ip-10-0-133-38("������ " 
/registry/leases/kube-system/kube-controller-manager
k8s 

coordination.k8s.io/v1Lease�
�
kube-controller-manager kube-system" *$9cc820cc-472f-4425-99c5-3dfe6297508e2 8 B̡�� z ��
kube-controller-managerUpdatecoordination.k8s.io/v1"̡�� 2FieldsV1:|
z{"f:spec":{"f:acquireTime":{},"f:holderIdentity":{},"f:leaseDurationSeconds":{},"f:leaseTransitions":{},"f:renewTime":{}}}B U
3ip-10-0-133-38_4342807c-1a57-479d-a849-e2a2d6463863�臫����"������( " 
/registry/leases/kube-system/kube-scheduler
k8s 

coordination.k8s.io/v1Lease�
�
kube-scheduler kube-system" *$fc359e26-a772-449d-82a5-cdc93552f5592 8 B���� z ��
kube-schedulerUpdatecoordination.k8s.io/v1"���� 2FieldsV1:|
z{"f:spec":{"f:acquireTime":{},"f:holderIdentity":{},"f:leaseDurationSeconds":{},"f:leaseTransitions":{},"f:renewTime":{}}}B T
3ip-10-0-133-38_2474c201-a5b3-49df-ad5d-fc57d15b0de6�燫���:"������( " 
/registry/masterleases/10.0.133.38
k8s 

v1	Endpoints(

   " * 2 8�B z 

10.0.133.38  " 
/registry/minions/ip-10-0-133-38
k8s 


v1Node� 
�

ip-10-0-133-38  " *$a239d82a-c95c-4b42-80f7-451b0644edc12 8 Bȡ�� Z 
beta.kubernetes.io/archamd64Z
beta.kubernetes.io/oslinuxZ
kubernetes.io/archamd64Z(
kubernetes.io/hostnameip-10-0-133-38Z
kubernetes.io/oslinuxZ)
%node-role.kubernetes.io/control-plane Z;
7node.kubernetes.io/exclude-from-external-load-balancers bF
&kubeadm.alpha.kubernetes.io/cri-socketunix:///run/cri-dockerd.sockb!
node.alpha.kubernetes.io/ttl0b>
6volumes.kubernetes.io/controller-managed-attach-detachtruez ��
kubeletUpdatev1"ȡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:volumes.kubernetes.io/controller-managed-attach-detach":{}},"f:labels":{".":{},"f:beta.kubernetes.io/arch":{},"f:beta.kubernetes.io/os":{},"f:kubernetes.io/arch":{},"f:kubernetes.io/hostname":{},"f:kubernetes.io/os":{}}}}B ��
kubeadmUpdatev1"���� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{"f:kubeadm.alpha.kubernetes.io/cri-socket":{}},"f:labels":{"f:node-role.kubernetes.io/control-plane":{},"f:node.kubernetes.io/exclude-from-external-load-balancers":{}}}}B ��
kube-controller-managerUpdatev1"���� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{"f:node.alpha.kubernetes.io/ttl":{}}},"f:spec":{"f:podCIDR":{},"f:podCIDRs":{".":{},"v:\"192.168.0.0/24\"":{}}}}B ��
kubeletUpdatev1"�Ղ� 2FieldsV1:�
�{"f:status":{"f:allocatable":{"f:ephemeral-storage":{}},"f:conditions":{"k:{\"type\":\"DiskPressure\"}":{"f:lastHeartbeatTime":{}},"k:{\"type\":\"MemoryPressure\"}":{"f:lastHeartbeatTime":{}},"k:{\"type\":\"PIDPressure\"}":{"f:lastHeartbeatTime":{}},"k:{\"type\":\"Ready\"}":{"f:lastHeartbeatTime":{},"f:lastTransitionTime":{},"f:message":{},"f:reason":{},"f:status":{}}},"f:images":{},"f:nodeInfo":{"f:bootID":{}}}}Bstatus&
192.168.0.0/24    :192.168.0.0/24�


cpu
2
 
ephemeral-storage
	8065444Ki


hugepages-1Gi
0


hugepages-2Mi
0

memory
	3997556Ki


pods
110

cpu
2!
ephemeral-storage

7433113179

hugepages-1Gi
0

hugepages-2Mi
0
memory
	3895156Ki

pods
110 "p
MemoryPressureFalse�� "ġ�� *KubeletHasSufficientMemory2'kubelet has sufficient memory available"a
DiskPressureFalse�� "ġ�� *KubeletHasNoDiskPressure2kubelet has no disk pressure"g
PIDPressureFalse�� "ġ�� *KubeletHasSufficientPID2$kubelet has sufficient PID available"b
ReadyTrue�� "���� *KubeletReady21kubelet is posting ready status. AppArmor enabled*

InternalIP10.0.133.38*
Hostnameip-10-0-133-382
�P:�
 ec2b21a2145bbe0ea8c974853abdbc4b$EC2B21A2-145B-BE0E-A8C9-74853ABDBC4B$a93f6b20-74b6-48f7-a8aa-bce576ff2d5a"4.4.0-1128-aws*Ubuntu 16.04.7 LTS2docker://20.10.7:v1.24.17Bv1.24.17JlinuxRamd64B�
\registry.k8s.io/etcd@sha256:dd75ec974b0a2a6f6bb47001ba09207976e625db898d1b16735528c009cb171c
registry.k8s.io/etcd:3.5.6-0���Bb
Mnginx@sha256:10d1f5b58f74683ad34eb29287e07dab1e90f10af243f151bb50aa5dbb4d62ee
nginx:latest���YB�
fregistry.k8s.io/kube-apiserver@sha256:4d0e1bda2a902a29d6d6d75038cc6f3dbea22a7c15136623c2de86b9ee6f24f0
'registry.k8s.io/kube-apiserver:v1.24.17���?B�
oregistry.k8s.io/kube-controller-manager@sha256:b35b1b6c52e4af10f94982c347054cb85555eceb98191bec04f0588d1b7d4856
0registry.k8s.io/kube-controller-manager:v1.24.17���9B�
bregistry.k8s.io/kube-proxy@sha256:35ddd4cbbd37e810efaea900eeacdc830046220ab290ec7c7e7745424786085a
#registry.k8s.io/kube-proxy:v1.24.17���4B�
_quay.io/tigera/operator@sha256:431f037ff18b5c867d01312e42671effc55602421aeed25dd3f6109f70596b4a
quay.io/tigera/operator:v1.30.9���B�
fregistry.k8s.io/kube-scheduler@sha256:c4cf0f525a9ca27210fd7b5fb1af82b7ae013f5ae87acff0cffe555f9570389a
'registry.k8s.io/kube-scheduler:v1.24.17���B�
gregistry.k8s.io/coredns/coredns@sha256:5b6ec0d6de9baaf3e92d0f66cd96a25b9edbce8716f5f15dcd1a616b3abd590e
&registry.k8s.io/coredns/coredns:v1.8.6㝪B~
]registry.k8s.io/pause@sha256:bb6ed397957e9ca7c65ada0db5c5d1c707c9c8afc80a94acbe69f3ae76988f0c
registry.k8s.io/pause:3.7��+B~
]registry.k8s.io/pause@sha256:3d380ca8864549e74af4b29c10f9cb0956236dfb01c40ca076fb6c37253234db
registry.k8s.io/pause:3.6��) " 
/registry/namespaces/default
k8s 

v1	Namespace�
�
default  " *$ee663a3d-9cd0-42b4-ae61-5b447669473b2 8 Bʡ�� Z&
kubernetes.io/metadata.namedefaultz �}
kube-apiserverUpdatev1"ʡ�� 2FieldsV1:I
G{"f:metadata":{"f:labels":{".":{},"f:kubernetes.io/metadata.name":{}}}}B 

kubernetes
Active " 
/registry/namespaces/kube-node-lease
k8s 

v1	Namespace�
�
kube-node-lease  " *$30ed362e-6e9f-4b50-b5cb-1d6d936f902b2 8 Bȡ�� Z.
kubernetes.io/metadata.namekube-node-leasez �}
kube-apiserverUpdatev1"ȡ�� 2FieldsV1:I
G{"f:metadata":{"f:labels":{".":{},"f:kubernetes.io/metadata.name":{}}}}B 

kubernetes
Active " 
/registry/namespaces/kube-public
k8s 

v1	Namespace�
�
kube-public  " *$b768e460-ade5-46b5-bda0-c063cc1081392 8 Bȡ�� Z*
kubernetes.io/metadata.namekube-publicz �}
kube-apiserverUpdatev1"ȡ�� 2FieldsV1:I
G{"f:metadata":{"f:labels":{".":{},"f:kubernetes.io/metadata.name":{}}}}B 

kubernetes
Active " 
/registry/namespaces/kube-system
k8s 

v1	Namespace�
�
kube-system  " *$72a27c40-d50b-43be-875d-c7c82ab297c62 8 Bȡ�� Z*
kubernetes.io/metadata.namekube-systemz �}
kube-apiserverUpdatev1"ȡ�� 2FieldsV1:I
G{"f:metadata":{"f:labels":{".":{},"f:kubernetes.io/metadata.name":{}}}}B 

kubernetes
Active " 
/registry/namespaces/tigera-operator
k8s 

v1	Namespace�
�
tigera-operator  " *$7acd3477-8d30-4ffe-a518-f79590d3a4012 8 B���� Z.
kubernetes.io/metadata.nametigera-operatorZ
nametigera-operatorz ��
kubectl-createUpdatev1"���� 2FieldsV1:U
S{"f:metadata":{"f:labels":{".":{},"f:kubernetes.io/metadata.name":{},"f:name":{}}}}B 

kubernetes
Active " 
/registry/operator.tigera.io/apiservers/default
{"apiVersion":"operator.tigera.io/v1","kind":"APIServer","metadata":{"creationTimestamp":"2023-11-22T16:52:16Z","generation":1,"managedFields":[{"apiVersion":"operator.tigera.io/v1","fieldsType":"FieldsV1","fieldsV1":{"f:spec":{}},"manager":"kubectl-create","operation":"Update","time":"2023-11-22T16:52:16Z"}],"name":"default","uid":"b242d6ce-a209-467a-8989-f55410c436e0"},"spec":{}}

/registry/operator.tigera.io/installations/default
{"apiVersion":"operator.tigera.io/v1","kind":"Installation","metadata":{"creationTimestamp":"2023-11-22T16:52:16Z","generation":1,"managedFields":[{"apiVersion":"operator.tigera.io/v1","fieldsType":"FieldsV1","fieldsV1":{"f:spec":{".":{},"f:calicoNetwork":{".":{},"f:ipPools":{}}}},"manager":"kubectl-create","operation":"Update","time":"2023-11-22T16:52:16Z"}],"name":"default","uid":"23ef62b2-0c51-43ad-926f-66e85c6d0ae6"},"spec":{"calicoNetwork":{"ipPools":[{"blockSize":26,"cidr":"192.168.0.0/16","disableBGPExport":false,"encapsulation":"VXLANCrossSubnet","natOutgoing":"Enabled","nodeSelector":"all()"}]}}}

/registry/pods/default/nginx
k8s 
	
v1Pod�
�
nginx default" *$8ba6cd0a-ac71-4cd5-87bd-07d6f9b1aa4f2 8 B� Z
runnginxz ��
kubectl-runUpdatev1"� 2FieldsV1:�
�{"f:metadata":{"f:labels":{".":{},"f:run":{}}},"f:spec":{"f:containers":{"k:{\"name\":\"nginx\"}":{".":{},"f:image":{},"f:imagePullPolicy":{},"f:name":{},"f:resources":{},"f:terminationMessagePath":{},"f:terminationMessagePolicy":{}}},"f:dnsPolicy":{},"f:enableServiceLinks":{},"f:restartPolicy":{},"f:schedulerName":{},"f:securityContext":{},"f:terminationGracePeriodSeconds":{}}}B ��
kubeletUpdatev1"� 2FieldsV1:�
�{"f:status":{"f:conditions":{"k:{\"type\":\"ContainersReady\"}":{".":{},"f:lastProbeTime":{},"f:lastTransitionTime":{},"f:status":{},"f:type":{}},"k:{\"type\":\"Initialized\"}":{".":{},"f:lastProbeTime":{},"f:lastTransitionTime":{},"f:status":{},"f:type":{}},"k:{\"type\":\"Ready\"}":{".":{},"f:lastProbeTime":{},"f:lastTransitionTime":{},"f:status":{},"f:type":{}}},"f:containerStatuses":{},"f:hostIP":{},"f:phase":{},"f:podIP":{},"f:podIPs":{".":{},"k:{\"ip\":\"10.1.0.5\"}":{".":{},"f:ip":{}}},"f:startTime":{}}}Bstatus�
�
kube-api-access-s2l86k�h
"
 �token
(&

kube-root-ca.crt
ca.crtca.crt
)'
%
	namespace
v1metadata.namespace��
nginxnginx* B JL
kube-api-access-s2l86-/var/run/secrets/kubernetes.io/serviceaccount" 2 j/dev/termination-logrAlways� � � �FileNever 2ClusterFirstBdefaultJdefaultRip-10-0-133-38X ` h r � � �default-scheduler�6
node.kubernetes.io/not-readyExists "	NoExecute(��8
node.kubernetes.io/unreachableExists "	NoExecute(�� � ��PreemptLowerPriority�
Running#
InitializedTrue "� * 2 
ReadyTrue "� * 2 '
ContainersReadyTrue "� * 2 $
PodScheduledTrue "� * 2  " *10.0.133.38210.1.0.5:� B�
nginx

�   ( 2nginx:latest:_docker-pullable://nginx@sha256:10d1f5b58f74683ad34eb29287e07dab1e90f10af243f151bb50aa5dbb4d62eeBIdocker://9571f1b3f89a439aa297c314034d42f06e242fbeff46eb17d954a9ec07421d55HJ
BestEffortZ b

10.1.0.5 " 
/registry/pods/kube-system/etcd-ip-10-0-133-38
k8s 
	
v1Pod�'
�
etcd-ip-10-0-133-38 kube-system" *$6cc82f05-0b67-43f8-bde9-1e20e3615f7f2 8 Bʡ�� Z
	componentetcdZ
tier
control-planebL
0kubeadm.kubernetes.io/etcd.advertise-client-urlshttps://10.0.133.38:2379b=
kubernetes.io/config.hash 5ebf8d52248d4db8f8e59a9bcc33110ab?
kubernetes.io/config.mirror 5ebf8d52248d4db8f8e59a9bcc33110ab;
kubernetes.io/config.seen2023-11-22T14:31:30.983742397Zb#
kubernetes.io/config.sourcefileb;
(seccomp.security.alpha.kubernetes.io/podruntime/defaultjB
Nodeip-10-0-133-38"$a239d82a-c95c-4b42-80f7-451b0644edc1*v10z ��

kubeletUpdatev1"ʡ�� 2FieldsV1:�

�
{"f:metadata":{"f:annotations":{".":{},"f:kubeadm.kubernetes.io/etcd.advertise-client-urls":{},"f:kubernetes.io/config.hash":{},"f:kubernetes.io/config.mirror":{},"f:kubernetes.io/config.seen":{},"f:kubernetes.io/config.source":{}},"f:labels":{".":{},"f:component":{},"f:tier":{}},"f:ownerReferences":{".":{},"k:{\"uid\":\"a239d82a-c95c-4b42-80f7-451b0644edc1\"}":{}}},"f:spec":{"f:containers":{"k:{\"name\":\"etcd\"}":{".":{},"f:command":{},"f:image":{},"f:imagePullPolicy":{},"f:livenessProbe":{".":{},"f:failureThreshold":{},"f:httpGet":{".":{},"f:host":{},"f:path":{},"f:port":{},"f:scheme":{}},"f:initialDelaySeconds":{},"f:periodSeconds":{},"f:successThreshold":{},"f:timeoutSeconds":{}},"f:name":{},"f:resources":{".":{},"f:requests":{".":{},"f:cpu":{},"f:memory":{}}},"f:startupProbe":{".":{},"f:failureThreshold":{},"f:httpGet":{".":{},"f:host":{},"f:path":{},"f:port":{},"f:scheme":{}},"f:initialDelaySeconds":{},"f:periodSeconds":{},"f:successThreshold":{},"f:timeoutSeconds":{}},"f:terminationMessagePath":{},"f:terminationMessagePolicy":{},"f:volumeMounts":{".":{},"k:{\"mountPath\":\"/etc/kubernetes/pki/etcd\"}":{".":{},"f:mountPath":{},"f:name":{}},"k:{\"mountPath\":\"/var/lib/etcd\"}":{".":{},"f:mountPath":{},"f:name":{}}}}},"f:dnsPolicy":{},"f:enableServiceLinks":{},"f:hostNetwork":{},"f:nodeName":{},"f:priorityClassName":{},"f:restartPolicy":{},"f:schedulerName":{},"f:securityContext":{".":{},"f:seccompProfile":{".":{},"f:type":{}}},"f:terminationGracePeriodSeconds":{},"f:tolerations":{},"f:volumes":{".":{},"k:{\"name\":\"etcd-certs\"}":{".":{},"f:hostPath":{".":{},"f:path":{},"f:type":{}},"f:name":{}},"k:{\"name\":\"etcd-data\"}":{".":{},"f:hostPath":{".":{},"f:path":{},"f:type":{}},"f:name":{}}}}}B ��
kubeletUpdatev1"�臫 2FieldsV1:�
�{"f:status":{"f:conditions":{".":{},"k:{\"type\":\"ContainersReady\"}":{".":{},"f:lastProbeTime":{},"f:lastTransitionTime":{},"f:status":{},"f:type":{}},"k:{\"type\":\"Initialized\"}":{".":{},"f:lastProbeTime":{},"f:lastTransitionTime":{},"f:status":{},"f:type":{}},"k:{\"type\":\"PodScheduled\"}":{".":{},"f:lastProbeTime":{},"f:lastTransitionTime":{},"f:status":{},"f:type":{}},"k:{\"type\":\"Ready\"}":{".":{},"f:lastProbeTime":{},"f:lastTransitionTime":{},"f:status":{},"f:type":{}}},"f:containerStatuses":{},"f:hostIP":{},"f:phase":{},"f:podIP":{},"f:podIPs":{".":{},"k:{\"ip\":\"10.0.133.38\"}":{".":{},"f:ip":{}}},"f:startTime":{}}}Bstatus�
=

etcd-certs/
-
/etc/kubernetes/pki/etcdDirectoryOrCreate
1
	etcd-data$
"

/var/lib/etcdDirectoryOrCreate�
etcdregistry.k8s.io/etcd:3.5.6-0etcd0--advertise-client-urls=https://10.0.133.38:2379/--cert-file=/etc/kubernetes/pki/etcd/server.crt--client-cert-auth=true--data-dir=/var/lib/etcd)--experimental-initial-corrupt-check=true6--initial-advertise-peer-urls=https://10.0.133.38:23809--initial-cluster=ip-10-0-133-38=https://10.0.133.38:2380.--key-file=/etc/kubernetes/pki/etcd/server.keyD--listen-client-urls=https://127.0.0.1:2379,https://10.0.133.38:2379+--listen-metrics-urls=http://127.0.0.1:2381+--listen-peer-urls=https://10.0.133.38:2380--name=ip-10-0-133-382--peer-cert-file=/etc/kubernetes/pki/etcd/peer.crt--peer-client-cert-auth=true1--peer-key-file=/etc/kubernetes/pki/etcd/peer.key6--peer-trusted-ca-file=/etc/kubernetes/pki/etcd/ca.crt--snapshot-count=100001--trusted-ca-file=/etc/kubernetes/pki/etcd/ca.crt* B"

cpu
100m
memory
100MiJ 
	etcd-data 
/var/lib/etcd" 2 J,

etcd-certs /etc/kubernetes/pki/etcd" 2 R1
%#
/health � 	127.0.0.1"HTTP
 
(0j/dev/termination-logrIfNotPresent� � � �File�1
%#
/health � 	127.0.0.1"HTTP
 
(0Always 2ClusterFirstB J Rip-10-0-133-38X` h rR
RuntimeDefault� � �default-scheduler�
 Exists "	NoExecute�system-node-critical��ֹ��PreemptLowerPriority�
Running#
InitializedTrue "�Ԃ� * 2 
ReadyTrue "�臫 * 2 '
ContainersReadyTrue "�臫 * 2 $
PodScheduledTrue "�Ԃ� * 2  " *10.0.133.38210.0.133.38:�Ԃ� B�
etcd

�燫 rp  	Completed" *�Ԃ� 2�� :Idocker://f4484371b4b968b244b72c829b1984f6e22dbf9ab6a86a3331941e6e88ea45d2 (2registry.k8s.io/etcd:3.5.6-0:ndocker-pullable://registry.k8s.io/etcd@sha256:dd75ec974b0a2a6f6bb47001ba09207976e625db898d1b16735528c009cb171cBIdocker://60d8d3a1631853e91f93e4fdf1408f01c96381f86dca80b26681926b75b598d8HJ	BurstableZ b

10.0.133.38 " 
/registry/pods/kube-system/kube-apiserver-ip-10-0-133-38
k8s 
	
v1Pod�7
�
kube-apiserver-ip-10-0-133-38 kube-system" *$80fc00ad-f807-458a-a528-c3e31496e2752 8 B̡�� Z
	componentkube-apiserverZ
tier
control-planebS
?kubeadm.kubernetes.io/kube-apiserver.advertise-address.endpoint10.0.133.38:6443b=
kubernetes.io/config.hash 8965a5636981389511c3239fcddf5f8eb?
kubernetes.io/config.mirror 8965a5636981389511c3239fcddf5f8eb;
kubernetes.io/config.seen2023-11-22T14:31:30.983748187Zb#
kubernetes.io/config.sourcefileb;
(seccomp.security.alpha.kubernetes.io/podruntime/defaultjB
Nodeip-10-0-133-38"$a239d82a-c95c-4b42-80f7-451b0644edc1*v10z ��
kubeletUpdatev1"̡�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:kubeadm.kubernetes.io/kube-apiserver.advertise-address.endpoint":{},"f:kubernetes.io/config.hash":{},"f:kubernetes.io/config.mirror":{},"f:kubernetes.io/config.seen":{},"f:kubernetes.io/config.source":{}},"f:labels":{".":{},"f:component":{},"f:tier":{}},"f:ownerReferences":{".":{},"k:{\"uid\":\"a239d82a-c95c-4b42-80f7-451b0644edc1\"}":{}}},"f:spec":{"f:containers":{"k:{\"name\":\"kube-apiserver\"}":{".":{},"f:command":{},"f:image":{},"f:imagePullPolicy":{},"f:livenessProbe":{".":{},"f:failureThreshold":{},"f:httpGet":{".":{},"f:host":{},"f:path":{},"f:port":{},"f:scheme":{}},"f:initialDelaySeconds":{},"f:periodSeconds":{},"f:successThreshold":{},"f:timeoutSeconds":{}},"f:name":{},"f:readinessProbe":{".":{},"f:failureThreshold":{},"f:httpGet":{".":{},"f:host":{},"f:path":{},"f:port":{},"f:scheme":{}},"f:periodSeconds":{},"f:successThreshold":{},"f:timeoutSeconds":{}},"f:resources":{".":{},"f:requests":{".":{},"f:cpu":{}}},"f:startupProbe":{".":{},"f:failureThreshold":{},"f:httpGet":{".":{},"f:host":{},"f:path":{},"f:port":{},"f:scheme":{}},"f:initialDelaySeconds":{},"f:periodSeconds":{},"f:successThreshold":{},"f:timeoutSeconds":{}},"f:terminationMessagePath":{},"f:terminationMessagePolicy":{},"f:volumeMounts":{".":{},"k:{\"mountPath\":\"/etc/ca-certificates\"}":{".":{},"f:mountPath":{},"f:name":{},"f:readOnly":{}},"k:{\"mountPath\":\"/etc/kubernetes/pki\"}":{".":{},"f:mountPath":{},"f:name":{},"f:readOnly":{}},"k:{\"mountPath\":\"/etc/ssl/certs\"}":{".":{},"f:mountPath":{},"f:name":{},"f:readOnly":{}},"k:{\"mountPath\":\"/usr/local/share/ca-certificates\"}":{".":{},"f:mountPath":{},"f:name":{},"f:readOnly":{}},"k:{\"mountPath\":\"/usr/share/ca-certificates\"}":{".":{},"f:mountPath":{},"f:name":{},"f:readOnly":{}}}}},"f:dnsPolicy":{},"f:enableServiceLinks":{},"f:hostNetwork":{},"f:nodeName":{},"f:priorityClassName":{},"f:restartPolicy":{},"f:schedulerName":{},"f:securityContext":{".":{},"f:seccompProfile":{".":{},"f:type":{}}},"f:terminationGracePeriodSeconds":{},"f:tolerations":{},"f:volumes":{".":{},"k:{\"name\":\"ca-certs\"}":{".":{},"f:hostPath":{".":{},"f:path":{},"f:type":{}},"f:name":{}},"k:{\"name\":\"etc-ca-certificates\"}":{".":{},"f:hostPath":{".":{},"f:path":{},"f:type":{}},"f:name":{}},"k:{\"name\":\"k8s-certs\"}":{".":{},"f:hostPath":{".":{},"f:path":{},"f:type":{}},"f:name":{}},"k:{\"name\":\"usr-local-share-ca-certificates\"}":{".":{},"f:hostPath":{".":{},"f:path":{},"f:type":{}},"f:name":{}},"k:{\"name\":\"usr-share-ca-certificates\"}":{".":{},"f:hostPath":{".":{},"f:path":{},"f:type":{}},"f:name":{}}}}}B ��
kubeletUpdatev1"�臫 2FieldsV1:�
�{"f:status":{"f:conditions":{".":{},"k:{\"type\":\"ContainersReady\"}":{".":{},"f:lastProbeTime":{},"f:lastTransitionTime":{},"f:status":{},"f:type":{}},"k:{\"type\":\"Initialized\"}":{".":{},"f:lastProbeTime":{},"f:lastTransitionTime":{},"f:status":{},"f:type":{}},"k:{\"type\":\"PodScheduled\"}":{".":{},"f:lastProbeTime":{},"f:lastTransitionTime":{},"f:status":{},"f:type":{}},"k:{\"type\":\"Ready\"}":{".":{},"f:lastProbeTime":{},"f:lastTransitionTime":{},"f:status":{},"f:type":{}}},"f:containerStatuses":{},"f:hostIP":{},"f:phase":{},"f:podIP":{},"f:podIPs":{".":{},"k:{\"ip\":\"10.0.133.38\"}":{".":{},"f:ip":{}}},"f:startTime":{}}}Bstatus�
1
ca-certs%
#
/etc/ssl/certsDirectoryOrCreate
B
etc-ca-certificates+
)
/etc/ca-certificatesDirectoryOrCreate
7
	k8s-certs*
(
/etc/kubernetes/pkiDirectoryOrCreate
Z
usr-local-share-ca-certificates7
5
 /usr/local/share/ca-certificatesDirectoryOrCreate
N
usr-share-ca-certificates1
/
/usr/share/ca-certificatesDirectoryOrCreate�
kube-apiserver'registry.k8s.io/kube-apiserver:v1.24.17kube-apiserver--advertise-address=10.0.133.38--allow-privileged=true--authorization-mode=Node,RBAC+--client-ca-file=/etc/kubernetes/pki/ca.crt*--enable-admission-plugins=NodeRestriction"--enable-bootstrap-token-auth=true---etcd-cafile=/etc/kubernetes/pki/etcd/ca.crt=--etcd-certfile=/etc/kubernetes/pki/apiserver-etcd-client.crt<--etcd-keyfile=/etc/kubernetes/pki/apiserver-etcd-client.key%--etcd-servers=https://127.0.0.1:2379M--kubelet-client-certificate=/etc/kubernetes/pki/apiserver-kubelet-client.crtE--kubelet-client-key=/etc/kubernetes/pki/apiserver-kubelet-client.key@--kubelet-preferred-address-types=InternalIP,ExternalIP,HostnameC--proxy-client-cert-file=/etc/kubernetes/pki/front-proxy-client.crtB--proxy-client-key-file=/etc/kubernetes/pki/front-proxy-client.key0--requestheader-allowed-names=front-proxy-clientE--requestheader-client-ca-file=/etc/kubernetes/pki/front-proxy-ca.crt4--requestheader-extra-headers-prefix=X-Remote-Extra-,--requestheader-group-headers=X-Remote-Group.--requestheader-username-headers=X-Remote-User--secure-port=6443E--service-account-issuer=https://kubernetes.default.svc.cluster.local5--service-account-key-file=/etc/kubernetes/pki/sa.pub=--service-account-signing-key-file=/etc/kubernetes/pki/sa.key'--service-cluster-ip-range=10.96.0.0/121--tls-cert-file=/etc/kubernetes/pki/apiserver.crt8--tls-private-key-file=/etc/kubernetes/pki/apiserver.key* B

cpu
250mJ 
ca-certs/etc/ssl/certs" 2 J1
etc-ca-certificates/etc/ca-certificates" 2 J&
	k8s-certs/etc/kubernetes/pki" 2 JI
usr-local-share-ca-certificates /usr/local/share/ca-certificates" 2 J=
usr-share-ca-certificates/usr/share/ca-certificates" 2 R3
'%
/livez �2 10.0.133.38"HTTPS
 
(0Z4
(&
/readyz �2 10.0.133.38"HTTPS  (0j/dev/termination-logrIfNotPresent� � � �File�3
'%
/livez �2 10.0.133.38"HTTPS
 
(0Always 2ClusterFirstB J Rip-10-0-133-38X` h rR
RuntimeDefault� � �default-scheduler�
 Exists "	NoExecute�system-node-critical��ֹ��PreemptLowerPriority�
Running#
InitializedTrue "�燫 * 2 
ReadyTrue "�臫 * 2 '
ContainersReadyTrue "�臫 * 2 $
PodScheduledTrue "�燫 * 2  " *10.0.133.38210.0.133.38:�燫 B�
kube-apiserver

�燫 rp  	Completed" *�Ԃ� 2�� :Idocker://1928968c65b3b54c6387ce832436f698d91071833ebd99497bdfaf841483a058 (2'registry.k8s.io/kube-apiserver:v1.24.17:xdocker-pullable://registry.k8s.io/kube-apiserver@sha256:4d0e1bda2a902a29d6d6d75038cc6f3dbea22a7c15136623c2de86b9ee6f24f0BIdocker://f1cb007b2ff80efcdd32fcb295db2f29c8c0e3ab9092516e94af83abb2428266HJ	BurstableZ b

10.0.133.38 " 
/registry/pods/kube-system/kube-controller-manager-ip-10-0-133-38
k8s 
	
v1Pod�5
�
&kube-controller-manager-ip-10-0-133-38 kube-system" *$cee55d62-a526-4521-aabf-e8b2c2281e722 8 B͡�� Z$
	componentkube-controller-managerZ
tier
control-planeb=
kubernetes.io/config.hash c4784908e2b7b493f5fa279db5705588b?
kubernetes.io/config.mirror c4784908e2b7b493f5fa279db5705588b;
kubernetes.io/config.seen2023-11-22T14:31:30.983750767Zb#
kubernetes.io/config.sourcefileb;
(seccomp.security.alpha.kubernetes.io/podruntime/defaultjB
Nodeip-10-0-133-38"$a239d82a-c95c-4b42-80f7-451b0644edc1*v10z ��
kubeletUpdatev1"͡�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:kubernetes.io/config.hash":{},"f:kubernetes.io/config.mirror":{},"f:kubernetes.io/config.seen":{},"f:kubernetes.io/config.source":{}},"f:labels":{".":{},"f:component":{},"f:tier":{}},"f:ownerReferences":{".":{},"k:{\"uid\":\"a239d82a-c95c-4b42-80f7-451b0644edc1\"}":{}}},"f:spec":{"f:containers":{"k:{\"name\":\"kube-controller-manager\"}":{".":{},"f:command":{},"f:image":{},"f:imagePullPolicy":{},"f:livenessProbe":{".":{},"f:failureThreshold":{},"f:httpGet":{".":{},"f:host":{},"f:path":{},"f:port":{},"f:scheme":{}},"f:initialDelaySeconds":{},"f:periodSeconds":{},"f:successThreshold":{},"f:timeoutSeconds":{}},"f:name":{},"f:resources":{".":{},"f:requests":{".":{},"f:cpu":{}}},"f:startupProbe":{".":{},"f:failureThreshold":{},"f:httpGet":{".":{},"f:host":{},"f:path":{},"f:port":{},"f:scheme":{}},"f:initialDelaySeconds":{},"f:periodSeconds":{},"f:successThreshold":{},"f:timeoutSeconds":{}},"f:terminationMessagePath":{},"f:terminationMessagePolicy":{},"f:volumeMounts":{".":{},"k:{\"mountPath\":\"/etc/ca-certificates\"}":{".":{},"f:mountPath":{},"f:name":{},"f:readOnly":{}},"k:{\"mountPath\":\"/etc/kubernetes/controller-manager.conf\"}":{".":{},"f:mountPath":{},"f:name":{},"f:readOnly":{}},"k:{\"mountPath\":\"/etc/kubernetes/pki\"}":{".":{},"f:mountPath":{},"f:name":{},"f:readOnly":{}},"k:{\"mountPath\":\"/etc/ssl/certs\"}":{".":{},"f:mountPath":{},"f:name":{},"f:readOnly":{}},"k:{\"mountPath\":\"/usr/libexec/kubernetes/kubelet-plugins/volume/exec\"}":{".":{},"f:mountPath":{},"f:name":{}},"k:{\"mountPath\":\"/usr/local/share/ca-certificates\"}":{".":{},"f:mountPath":{},"f:name":{},"f:readOnly":{}},"k:{\"mountPath\":\"/usr/share/ca-certificates\"}":{".":{},"f:mountPath":{},"f:name":{},"f:readOnly":{}}}}},"f:dnsPolicy":{},"f:enableServiceLinks":{},"f:hostNetwork":{},"f:nodeName":{},"f:priorityClassName":{},"f:restartPolicy":{},"f:schedulerName":{},"f:securityContext":{".":{},"f:seccompProfile":{".":{},"f:type":{}}},"f:terminationGracePeriodSeconds":{},"f:tolerations":{},"f:volumes":{".":{},"k:{\"name\":\"ca-certs\"}":{".":{},"f:hostPath":{".":{},"f:path":{},"f:type":{}},"f:name":{}},"k:{\"name\":\"etc-ca-certificates\"}":{".":{},"f:hostPath":{".":{},"f:path":{},"f:type":{}},"f:name":{}},"k:{\"name\":\"flexvolume-dir\"}":{".":{},"f:hostPath":{".":{},"f:path":{},"f:type":{}},"f:name":{}},"k:{\"name\":\"k8s-certs\"}":{".":{},"f:hostPath":{".":{},"f:path":{},"f:type":{}},"f:name":{}},"k:{\"name\":\"kubeconfig\"}":{".":{},"f:hostPath":{".":{},"f:path":{},"f:type":{}},"f:name":{}},"k:{\"name\":\"usr-local-share-ca-certificates\"}":{".":{},"f:hostPath":{".":{},"f:path":{},"f:type":{}},"f:name":{}},"k:{\"name\":\"usr-share-ca-certificates\"}":{".":{},"f:hostPath":{".":{},"f:path":{},"f:type":{}},"f:name":{}}}}}B ��
kubeletUpdatev1"���� 2FieldsV1:�
�{"f:status":{"f:conditions":{".":{},"k:{\"type\":\"ContainersReady\"}":{".":{},"f:lastProbeTime":{},"f:lastTransitionTime":{},"f:status":{},"f:type":{}},"k:{\"type\":\"Initialized\"}":{".":{},"f:lastProbeTime":{},"f:lastTransitionTime":{},"f:status":{},"f:type":{}},"k:{\"type\":\"PodScheduled\"}":{".":{},"f:lastProbeTime":{},"f:lastTransitionTime":{},"f:status":{},"f:type":{}},"k:{\"type\":\"Ready\"}":{".":{},"f:lastProbeTime":{},"f:lastTransitionTime":{},"f:status":{},"f:type":{}}},"f:containerStatuses":{},"f:hostIP":{},"f:phase":{},"f:podIP":{},"f:podIPs":{".":{},"k:{\"ip\":\"10.0.133.38\"}":{".":{},"f:ip":{}}},"f:startTime":{}}}Bstatus�
1
ca-certs%
#
/etc/ssl/certsDirectoryOrCreate
B
etc-ca-certificates+
)
/etc/ca-certificatesDirectoryOrCreate
\
flexvolume-dirJ
H
3/usr/libexec/kubernetes/kubelet-plugins/volume/execDirectoryOrCreate
7
	k8s-certs*
(
/etc/kubernetes/pkiDirectoryOrCreate
G

kubeconfig9
7
'/etc/kubernetes/controller-manager.confFileOrCreate
Z
usr-local-share-ca-certificates7
5
 /usr/local/share/ca-certificatesDirectoryOrCreate
N
usr-share-ca-certificates1
/
/usr/share/ca-certificatesDirectoryOrCreate�
kube-controller-manager0registry.k8s.io/kube-controller-manager:v1.24.17kube-controller-manager--allocate-node-cidrs=trueC--authentication-kubeconfig=/etc/kubernetes/controller-manager.confB--authorization-kubeconfig=/etc/kubernetes/controller-manager.conf--bind-address=127.0.0.1+--client-ca-file=/etc/kubernetes/pki/ca.crt--cluster-cidr=192.168.0.0/16--cluster-name=kubernetes6--cluster-signing-cert-file=/etc/kubernetes/pki/ca.crt5--cluster-signing-key-file=/etc/kubernetes/pki/ca.key,--controllers=*,bootstrapsigner,tokencleaner4--kubeconfig=/etc/kubernetes/controller-manager.conf--leader-elect=trueE--requestheader-client-ca-file=/etc/kubernetes/pki/front-proxy-ca.crt)--root-ca-file=/etc/kubernetes/pki/ca.crt=--service-account-private-key-file=/etc/kubernetes/pki/sa.key'--service-cluster-ip-range=10.96.0.0/12&--use-service-account-credentials=true* B

cpu
200mJ 
ca-certs/etc/ssl/certs" 2 J1
etc-ca-certificates/etc/ca-certificates" 2 JK
flexvolume-dir 3/usr/libexec/kubernetes/kubelet-plugins/volume/exec" 2 J&
	k8s-certs/etc/kubernetes/pki" 2 J;

kubeconfig'/etc/kubernetes/controller-manager.conf" 2 JI
usr-local-share-ca-certificates /usr/local/share/ca-certificates" 2 J=
usr-share-ca-certificates/usr/share/ca-certificates" 2 R3
'%
/healthz �P 	127.0.0.1"HTTPS
 
(0j/dev/termination-logrIfNotPresent� � � �File�3
'%
/healthz �P 	127.0.0.1"HTTPS
 
(0Always 2ClusterFirstB J Rip-10-0-133-38X` h rR
RuntimeDefault� � �default-scheduler�
 Exists "	NoExecute�system-node-critical��ֹ��PreemptLowerPriority�
Running#
InitializedTrue "�Ԃ� * 2 
ReadyTrue "�Ղ� * 2 '
ContainersReadyTrue "�Ղ� * 2 $
PodScheduledTrue "�Ԃ� * 2  " *10.0.133.38210.0.133.38:�Ԃ� B�
kube-controller-manager

�燫 nl Error" *�Ԃ� 2�� :Idocker://13a79f5c66a5546b2de0af38b4bb37296d6ae3673618e279617288fb8e231066 (20registry.k8s.io/kube-controller-manager:v1.24.17:�docker-pullable://registry.k8s.io/kube-controller-manager@sha256:b35b1b6c52e4af10f94982c347054cb85555eceb98191bec04f0588d1b7d4856BIdocker://5e846645c058ea286744c317d57eb891c4dcc96f226576f5f746f991aa18052eHJ	BurstableZ b

10.0.133.38 " 
/registry/pods/kube-system/kube-scheduler-ip-10-0-133-38
k8s 
	
v1Pod� 
�
kube-scheduler-ip-10-0-133-38 kube-system" *$80f140e6-249f-4421-9f1d-b5c5f4b3563a2 8 B���� Z
	componentkube-schedulerZ
tier
control-planeb=
kubernetes.io/config.hash ea8f832c8fa96aacc328f67a7a5608f4b?
kubernetes.io/config.mirror ea8f832c8fa96aacc328f67a7a5608f4b;
kubernetes.io/config.seen2023-11-22T14:31:30.983752747Zb#
kubernetes.io/config.sourcefileb;
(seccomp.security.alpha.kubernetes.io/podruntime/defaultjB
Nodeip-10-0-133-38"$a239d82a-c95c-4b42-80f7-451b0644edc1*v10z ��
kubeletUpdatev1"���� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:kubernetes.io/config.hash":{},"f:kubernetes.io/config.mirror":{},"f:kubernetes.io/config.seen":{},"f:kubernetes.io/config.source":{}},"f:labels":{".":{},"f:component":{},"f:tier":{}},"f:ownerReferences":{".":{},"k:{\"uid\":\"a239d82a-c95c-4b42-80f7-451b0644edc1\"}":{}}},"f:spec":{"f:containers":{"k:{\"name\":\"kube-scheduler\"}":{".":{},"f:command":{},"f:image":{},"f:imagePullPolicy":{},"f:livenessProbe":{".":{},"f:failureThreshold":{},"f:httpGet":{".":{},"f:host":{},"f:path":{},"f:port":{},"f:scheme":{}},"f:initialDelaySeconds":{},"f:periodSeconds":{},"f:successThreshold":{},"f:timeoutSeconds":{}},"f:name":{},"f:resources":{".":{},"f:requests":{".":{},"f:cpu":{}}},"f:startupProbe":{".":{},"f:failureThreshold":{},"f:httpGet":{".":{},"f:host":{},"f:path":{},"f:port":{},"f:scheme":{}},"f:initialDelaySeconds":{},"f:periodSeconds":{},"f:successThreshold":{},"f:timeoutSeconds":{}},"f:terminationMessagePath":{},"f:terminationMessagePolicy":{},"f:volumeMounts":{".":{},"k:{\"mountPath\":\"/etc/kubernetes/scheduler.conf\"}":{".":{},"f:mountPath":{},"f:name":{},"f:readOnly":{}}}}},"f:dnsPolicy":{},"f:enableServiceLinks":{},"f:hostNetwork":{},"f:nodeName":{},"f:priorityClassName":{},"f:restartPolicy":{},"f:schedulerName":{},"f:securityContext":{".":{},"f:seccompProfile":{".":{},"f:type":{}}},"f:terminationGracePeriodSeconds":{},"f:tolerations":{},"f:volumes":{".":{},"k:{\"name\":\"kubeconfig\"}":{".":{},"f:hostPath":{".":{},"f:path":{},"f:type":{}},"f:name":{}}}}}B ��
kubeletUpdatev1"�臫 2FieldsV1:�
�{"f:status":{"f:conditions":{".":{},"k:{\"type\":\"ContainersReady\"}":{".":{},"f:lastProbeTime":{},"f:lastTransitionTime":{},"f:status":{},"f:type":{}},"k:{\"type\":\"Initialized\"}":{".":{},"f:lastProbeTime":{},"f:lastTransitionTime":{},"f:status":{},"f:type":{}},"k:{\"type\":\"PodScheduled\"}":{".":{},"f:lastProbeTime":{},"f:lastTransitionTime":{},"f:status":{},"f:type":{}},"k:{\"type\":\"Ready\"}":{".":{},"f:lastProbeTime":{},"f:lastTransitionTime":{},"f:status":{},"f:type":{}}},"f:containerStatuses":{},"f:hostIP":{},"f:phase":{},"f:podIP":{},"f:podIPs":{".":{},"k:{\"ip\":\"10.0.133.38\"}":{".":{},"f:ip":{}}},"f:startTime":{}}}Bstatus�
>

kubeconfig0
.
/etc/kubernetes/scheduler.confFileOrCreate�
kube-scheduler'registry.k8s.io/kube-scheduler:v1.24.17kube-scheduler:--authentication-kubeconfig=/etc/kubernetes/scheduler.conf9--authorization-kubeconfig=/etc/kubernetes/scheduler.conf--bind-address=127.0.0.1+--kubeconfig=/etc/kubernetes/scheduler.conf--leader-elect=true* B

cpu
100mJ2

kubeconfig/etc/kubernetes/scheduler.conf" 2 R3
'%
/healthz �P 	127.0.0.1"HTTPS
 
(0j/dev/termination-logrIfNotPresent� � � �File�3
'%
/healthz �P 	127.0.0.1"HTTPS
 
(0Always 2ClusterFirstB J Rip-10-0-133-38X` h rR
RuntimeDefault� � �default-scheduler�
 Exists "	NoExecute�system-node-critical��ֹ��PreemptLowerPriority�
Running#
InitializedTrue "�燫 * 2 
ReadyTrue "�臫 * 2 '
ContainersReadyTrue "�臫 * 2 $
PodScheduledTrue "�燫 * 2  " *10.0.133.38210.0.133.38:�燫 B�
kube-scheduler

�燫 rp  	Completed" *�Ԃ� 2�� :Idocker://6d12610eb159cd97bc10c4d77d6074171a81e44fb58d9cc4c77b0240646ecdf9 (2'registry.k8s.io/kube-scheduler:v1.24.17:xdocker-pullable://registry.k8s.io/kube-scheduler@sha256:c4cf0f525a9ca27210fd7b5fb1af82b7ae013f5ae87acff0cffe555f9570389aBIdocker://1584746ec1fc3d981b63f7525a961d9e80ec80eea4f36292659a82535c0d3723HJ	BurstableZ b

10.0.133.38 " 
/registry/pods/tigera-operator/tigera-operator-5cb8cc79df-n82th
k8s 
	
v1Pod�
�
 tigera-operator-5cb8cc79df-n82thtigera-operator-5cb8cc79df-tigera-operator" *$426cee6c-47e5-4682-9bd1-0c1840125a9a2 8 B���� Z
k8s-apptigera-operatorZ
nametigera-operatorZ
pod-template-hash
5cb8cc79dfj[

ReplicaSettigera-operator-5cb8cc79df"$176a4eb0-2d41-4238-9525-70f4e7931365*apps/v108z ��

kube-controller-managerUpdatev1"���� 2FieldsV1:�	
�	{"f:metadata":{"f:generateName":{},"f:labels":{".":{},"f:k8s-app":{},"f:name":{},"f:pod-template-hash":{}},"f:ownerReferences":{".":{},"k:{\"uid\":\"176a4eb0-2d41-4238-9525-70f4e7931365\"}":{}}},"f:spec":{"f:containers":{"k:{\"name\":\"tigera-operator\"}":{".":{},"f:command":{},"f:env":{".":{},"k:{\"name\":\"OPERATOR_NAME\"}":{".":{},"f:name":{},"f:value":{}},"k:{\"name\":\"POD_NAME\"}":{".":{},"f:name":{},"f:valueFrom":{".":{},"f:fieldRef":{}}},"k:{\"name\":\"TIGERA_OPERATOR_INIT_IMAGE_VERSION\"}":{".":{},"f:name":{},"f:value":{}},"k:{\"name\":\"WATCH_NAMESPACE\"}":{".":{},"f:name":{}}},"f:envFrom":{},"f:image":{},"f:imagePullPolicy":{},"f:name":{},"f:resources":{},"f:terminationMessagePath":{},"f:terminationMessagePolicy":{},"f:volumeMounts":{".":{},"k:{\"mountPath\":\"/var/lib/calico\"}":{".":{},"f:mountPath":{},"f:name":{},"f:readOnly":{}}}}},"f:dnsPolicy":{},"f:enableServiceLinks":{},"f:hostNetwork":{},"f:nodeSelector":{},"f:restartPolicy":{},"f:schedulerName":{},"f:securityContext":{},"f:serviceAccount":{},"f:serviceAccountName":{},"f:terminationGracePeriodSeconds":{},"f:tolerations":{},"f:volumes":{".":{},"k:{\"name\":\"var-lib-calico\"}":{".":{},"f:hostPath":{".":{},"f:path":{},"f:type":{}},"f:name":{}}}}}B ��
kubeletUpdatev1"�� 2FieldsV1:�
�{"f:status":{"f:conditions":{"k:{\"type\":\"ContainersReady\"}":{".":{},"f:lastProbeTime":{},"f:lastTransitionTime":{},"f:status":{},"f:type":{}},"k:{\"type\":\"Initialized\"}":{".":{},"f:lastProbeTime":{},"f:lastTransitionTime":{},"f:status":{},"f:type":{}},"k:{\"type\":\"Ready\"}":{".":{},"f:lastProbeTime":{},"f:lastTransitionTime":{},"f:status":{},"f:type":{}}},"f:containerStatuses":{},"f:hostIP":{},"f:phase":{},"f:podIP":{},"f:podIPs":{".":{},"k:{\"ip\":\"10.0.133.38\"}":{".":{},"f:ip":{}}},"f:startTime":{}}}Bstatus�
'
var-lib-calico

/var/lib/calico 
�
kube-api-access-hswsdk�h
"
 �token
(&

kube-root-ca.crt
ca.crtca.crt
)'
%
	namespace
v1metadata.namespace��
tigera-operatorquay.io/tigera/operator:v1.30.9operator* :
WATCH_NAMESPACE :#
POD_NAME 

v1
metadata.name: 

OPERATOR_NAMEtigera-operator:-
"TIGERA_OPERATOR_INIT_IMAGE_VERSIONv1.30.9B J'
var-lib-calico/var/lib/calico" 2 JL
kube-api-access-hswsd-/var/run/secrets/kubernetes.io/serviceaccount" 2 j/dev/termination-logrIfNotPresent� � � �&
 "

kubernetes-services-endpoint�FileAlways 2ClusterFirstWithHostNet:
kubernetes.io/oslinuxBtigera-operatorJtigera-operatorRip-10-0-133-38X` h r � � �default-scheduler�
 Exists "	NoExecute�
 Exists "
NoSchedule� � ��PreemptLowerPriority�
Running#
InitializedTrue "���� * 2 
ReadyTrue "�� * 2 '
ContainersReadyTrue "�� * 2 $
PodScheduledTrue "���� * 2  " *10.0.133.38210.0.133.38:���� B�
tigera-operator

�� nl Error" *�� 2�� :Idocker://26a322bb7f42c911fa00c0c8f1e69f5d1df84f40c45aa4e8ad5233146f2258c6 (�2quay.io/tigera/operator:v1.30.9:qdocker-pullable://quay.io/tigera/operator@sha256:431f037ff18b5c867d01312e42671effc55602421aeed25dd3f6109f70596b4aBIdocker://534ffbe13de30d2180780dee012baa62978b54f7f979d732dfb567be71fe722cHJ
BestEffortZ b

10.0.133.38 " 
/registry/priorityclasses/system-cluster-critical
k8s 
%
scheduling.k8s.io/v1
PriorityClass�
�
system-cluster-critical  " *$08978742-a073-4e0f-bc40-28a53dc926b62 8Bɡ�� z ��
kube-apiserverUpdatescheduling.k8s.io/v1"ɡ�� 2FieldsV1:;
9{"f:description":{},"f:preemptionPolicy":{},"f:value":{}}B ��ֹ "jUsed for system critical pods that must run in the cluster, but can be moved to another node if necessary.*PreemptLowerPriority " 
/registry/priorityclasses/system-node-critical
k8s 
%
scheduling.k8s.io/v1
PriorityClass�
�
system-node-critical  " *$c3108123-957c-41e1-9870-07bb6335e7642 8Bɡ�� z ��
kube-apiserverUpdatescheduling.k8s.io/v1"ɡ�� 2FieldsV1:;
9{"f:description":{},"f:preemptionPolicy":{},"f:value":{}}B �ֹ "MUsed for system critical pods that must not be moved from their current node.*PreemptLowerPriority " 
/registry/prioritylevelconfigurations/catch-all
k8s 
B
$flowcontrol.apiserver.k8s.io/v1beta1PriorityLevelConfiguration�
�
	catch-all  " *$c5b5db2e-b909-41ce-b880-2b3da53cd4ae2 8Bȡ�� b)
!apf.kubernetes.io/autoupdate-spectruez ��
,api-priority-and-fairness-config-producer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:apf.kubernetes.io/autoupdate-spec":{}}},"f:spec":{"f:limited":{".":{},"f:assuredConcurrencyShares":{},"f:limitResponse":{".":{},"f:type":{}}},"f:type":{}}}B 
Limited
Reject  " 
/registry/prioritylevelconfigurations/exempt
k8s 
B
$flowcontrol.apiserver.k8s.io/v1beta1PriorityLevelConfiguration�
�
exempt  " *$1aeb07f5-69d5-4693-8e40-05c4d35ad93b2 8Bȡ�� b)
!apf.kubernetes.io/autoupdate-spectruez ��
,api-priority-and-fairness-config-producer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:k
i{"f:metadata":{"f:annotations":{".":{},"f:apf.kubernetes.io/autoupdate-spec":{}}},"f:spec":{"f:type":{}}}B 
Exempt  " 
/registry/prioritylevelconfigurations/global-default
k8s 
B
$flowcontrol.apiserver.k8s.io/v1beta1PriorityLevelConfiguration�
�
global-default  " *$30fae747-516c-41d7-91af-4bedd0968f772 8Bȡ�� b)
!apf.kubernetes.io/autoupdate-spectruez ��
,api-priority-and-fairness-config-producer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:apf.kubernetes.io/autoupdate-spec":{}}},"f:spec":{"f:limited":{".":{},"f:assuredConcurrencyShares":{},"f:limitResponse":{".":{},"f:queuing":{".":{},"f:handSize":{},"f:queueLengthLimit":{},"f:queues":{}},"f:type":{}}},"f:type":{}}}B 
Limited
Queue�2  " 
/registry/prioritylevelconfigurations/leader-election
k8s 
B
$flowcontrol.apiserver.k8s.io/v1beta1PriorityLevelConfiguration�
�
leader-election  " *$21fdb095-5d72-4321-b6e2-5e7b5f97324a2 8Bȡ�� b)
!apf.kubernetes.io/autoupdate-spectruez ��
,api-priority-and-fairness-config-producer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:apf.kubernetes.io/autoupdate-spec":{}}},"f:spec":{"f:limited":{".":{},"f:assuredConcurrencyShares":{},"f:limitResponse":{".":{},"f:queuing":{".":{},"f:handSize":{},"f:queueLengthLimit":{},"f:queues":{}},"f:type":{}}},"f:type":{}}}B 
Limited

Queue2  " 
/registry/prioritylevelconfigurations/node-high
k8s 
B
$flowcontrol.apiserver.k8s.io/v1beta1PriorityLevelConfiguration�
�
	node-high  " *$51df8c3a-6538-4fd8-bf29-5520f002f4a12 8Bȡ�� b)
!apf.kubernetes.io/autoupdate-spectruez ��
,api-priority-and-fairness-config-producer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:apf.kubernetes.io/autoupdate-spec":{}}},"f:spec":{"f:limited":{".":{},"f:assuredConcurrencyShares":{},"f:limitResponse":{".":{},"f:queuing":{".":{},"f:handSize":{},"f:queueLengthLimit":{},"f:queues":{}},"f:type":{}}},"f:type":{}}}B 
Limited(
Queue@2  " 
/registry/prioritylevelconfigurations/system
k8s 
B
$flowcontrol.apiserver.k8s.io/v1beta1PriorityLevelConfiguration�
�
system  " *$f0cc593d-87d3-459d-9df7-fc9d308f89812 8Bȡ�� b)
!apf.kubernetes.io/autoupdate-spectruez ��
,api-priority-and-fairness-config-producer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:apf.kubernetes.io/autoupdate-spec":{}}},"f:spec":{"f:limited":{".":{},"f:assuredConcurrencyShares":{},"f:limitResponse":{".":{},"f:queuing":{".":{},"f:handSize":{},"f:queueLengthLimit":{},"f:queues":{}},"f:type":{}}},"f:type":{}}}B 
Limited
Queue@2  " 
/registry/prioritylevelconfigurations/workload-high
k8s 
B
$flowcontrol.apiserver.k8s.io/v1beta1PriorityLevelConfiguration�
�

workload-high  " *$b18a28c0-4c1c-41c2-9373-a70ca55d05f42 8Bȡ�� b)
!apf.kubernetes.io/autoupdate-spectruez ��
,api-priority-and-fairness-config-producer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:apf.kubernetes.io/autoupdate-spec":{}}},"f:spec":{"f:limited":{".":{},"f:assuredConcurrencyShares":{},"f:limitResponse":{".":{},"f:queuing":{".":{},"f:handSize":{},"f:queueLengthLimit":{},"f:queues":{}},"f:type":{}}},"f:type":{}}}B 
Limited(
Queue�2  " 
/registry/prioritylevelconfigurations/workload-low
k8s 
B
$flowcontrol.apiserver.k8s.io/v1beta1PriorityLevelConfiguration�
�
workload-low  " *$39a315a4-ba2c-482c-b3d3-5db8416257102 8Bȡ�� b)
!apf.kubernetes.io/autoupdate-spectruez ��
,api-priority-and-fairness-config-producer-v1Update$flowcontrol.apiserver.k8s.io/v1beta2"ȡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:apf.kubernetes.io/autoupdate-spec":{}}},"f:spec":{"f:limited":{".":{},"f:assuredConcurrencyShares":{},"f:limitResponse":{".":{},"f:queuing":{".":{},"f:handSize":{},"f:queueLengthLimit":{},"f:queues":{}},"f:type":{}}},"f:type":{}}}B 
Limitedd
Queue�2  " 
/registry/ranges/serviceips
k8s 

v1RangeAllocation%

   " * 2 8 B z 10.96.0.0/12 " 
/registry/ranges/servicenodeports
k8s 

v1RangeAllocation#

   " * 2 8 B z 30000-32767  " 
/registry/replicasets/tigera-operator/tigera-operator-5cb8cc79df
k8s 

apps/v1
ReplicaSet�
�
tigera-operator-5cb8cc79df tigera-operator" *$176a4eb0-2d41-4238-9525-70f4e79313652 8B���� Z
k8s-apptigera-operatorZ
nametigera-operatorZ
pod-template-hash
5cb8cc79dfb.
)deployment.kubernetes.io/desired-replicas1b*
%deployment.kubernetes.io/max-replicas2b&
!deployment.kubernetes.io/revision1jP

Deploymenttigera-operator"$34aa4973-2ca9-4626-a277-b5a9e1de9854*apps/v108z ��
kube-controller-managerUpdateapps/v1"���� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:deployment.kubernetes.io/desired-replicas":{},"f:deployment.kubernetes.io/max-replicas":{},"f:deployment.kubernetes.io/revision":{}},"f:labels":{".":{},"f:k8s-app":{},"f:name":{},"f:pod-template-hash":{}},"f:ownerReferences":{".":{},"k:{\"uid\":\"34aa4973-2ca9-4626-a277-b5a9e1de9854\"}":{}}},"f:spec":{"f:replicas":{},"f:selector":{},"f:template":{"f:metadata":{"f:labels":{".":{},"f:k8s-app":{},"f:name":{},"f:pod-template-hash":{}}},"f:spec":{"f:containers":{"k:{\"name\":\"tigera-operator\"}":{".":{},"f:command":{},"f:env":{".":{},"k:{\"name\":\"OPERATOR_NAME\"}":{".":{},"f:name":{},"f:value":{}},"k:{\"name\":\"POD_NAME\"}":{".":{},"f:name":{},"f:valueFrom":{".":{},"f:fieldRef":{}}},"k:{\"name\":\"TIGERA_OPERATOR_INIT_IMAGE_VERSION\"}":{".":{},"f:name":{},"f:value":{}},"k:{\"name\":\"WATCH_NAMESPACE\"}":{".":{},"f:name":{}}},"f:envFrom":{},"f:image":{},"f:imagePullPolicy":{},"f:name":{},"f:resources":{},"f:terminationMessagePath":{},"f:terminationMessagePolicy":{},"f:volumeMounts":{".":{},"k:{\"mountPath\":\"/var/lib/calico\"}":{".":{},"f:mountPath":{},"f:name":{},"f:readOnly":{}}}}},"f:dnsPolicy":{},"f:hostNetwork":{},"f:nodeSelector":{},"f:restartPolicy":{},"f:schedulerName":{},"f:securityContext":{},"f:serviceAccount":{},"f:serviceAccountName":{},"f:terminationGracePeriodSeconds":{},"f:tolerations":{},"f:volumes":{".":{},"k:{\"name\":\"var-lib-calico\"}":{".":{},"f:hostPath":{".":{},"f:path":{},"f:type":{}},"f:name":{}}}}}}}B ��
kube-controller-managerUpdateapps/v1"�� 2FieldsV1:�
�{"f:status":{"f:availableReplicas":{},"f:fullyLabeledReplicas":{},"f:observedGeneration":{},"f:readyReplicas":{},"f:replicas":{}}}Bstatus�:

nametigera-operator

pod-template-hash
5cb8cc79df�
h
   " * 2 8 B Z
k8s-apptigera-operatorZ
nametigera-operatorZ
pod-template-hash
5cb8cc79dfz �
'
var-lib-calico

/var/lib/calico �
tigera-operatorquay.io/tigera/operator:v1.30.9operator* :
WATCH_NAMESPACE :#
POD_NAME 

v1
metadata.name: 

OPERATOR_NAMEtigera-operator:-
"TIGERA_OPERATOR_INIT_IMAGE_VERSIONv1.30.9B J'
var-lib-calico/var/lib/calico" 2 j/dev/termination-logrIfNotPresent� � � �&
 "

kubernetes-services-endpoint�FileAlways 2ClusterFirstWithHostNet:
kubernetes.io/oslinuxBtigera-operatorJtigera-operatorR X` h r � � �default-scheduler�
 Exists "	NoExecute�
 Exists "
NoSchedule�   
 ( " 
/registry/rolebindings/kube-public/system:controller:bootstrap-signer
k8s 
+
rbac.authorization.k8s.io/v1RoleBinding�
�
"system:controller:bootstrap-signer kube-public" *$2f9a2fd2-822c-40ce-b2b1-a7b5c0c958de2 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B 1
ServiceAccount bootstrap-signer"kube-systemE
rbac.authorization.k8s.ioRole"system:controller:bootstrap-signer " 
/registry/rolebindings/kube-system/kubeadm:kubelet-config
k8s 
+
rbac.authorization.k8s.io/v1RoleBinding�
�
kubeadm:kubelet-config kube-system" *$e55baf77-611c-451c-a9d0-78d2fd35f2722 8 B��� z �i
kubeadmUpdaterbac.authorization.k8s.io/v1"��� 2FieldsV1:"
 {"f:roleRef":{},"f:subjects":{}}B 2
Grouprbac.authorization.k8s.iosystem:nodes" U
Grouprbac.authorization.k8s.io/system:bootstrappers:kubeadm:default-node-token" 9
rbac.authorization.k8s.ioRolekubeadm:kubelet-config " 
/registry/rolebindings/kube-system/kubeadm:nodes-kubeadm-config
k8s 
+
rbac.authorization.k8s.io/v1RoleBinding�
�
kubeadm:nodes-kubeadm-config kube-system" *$7e853dfc-5b88-4fcc-bd9d-4d9c7b8d6eaa2 8 B��� z �i
kubeadmUpdaterbac.authorization.k8s.io/v1"��� 2FieldsV1:"
 {"f:roleRef":{},"f:subjects":{}}B U
Grouprbac.authorization.k8s.io/system:bootstrappers:kubeadm:default-node-token" 2
Grouprbac.authorization.k8s.iosystem:nodes" ?
rbac.authorization.k8s.ioRolekubeadm:nodes-kubeadm-config " 
/registry/rolebindings/kube-system/system::extension-apiserver-authentication-reader
k8s 
+
rbac.authorization.k8s.io/v1RoleBinding�
�
1system::extension-apiserver-authentication-reader kube-system" *$da8662f1-12c3-4ceb-ae0d-ac6eda9755ef2 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B C
Userrbac.authorization.k8s.iosystem:kube-controller-manager" :
Userrbac.authorization.k8s.iosystem:kube-scheduler" L
rbac.authorization.k8s.ioRole)extension-apiserver-authentication-reader " 
/registry/rolebindings/kube-system/system::leader-locking-kube-controller-manager
k8s 
+
rbac.authorization.k8s.io/v1RoleBinding�
�
.system::leader-locking-kube-controller-manager kube-system" *$4852ac07-8f3b-40fb-862a-16e4dafb1f5c2 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B C
Userrbac.authorization.k8s.iosystem:kube-controller-manager" 8
ServiceAccount kube-controller-manager"kube-systemQ
rbac.authorization.k8s.ioRole.system::leader-locking-kube-controller-manager " 
/registry/rolebindings/kube-system/system::leader-locking-kube-scheduler
k8s 
+
rbac.authorization.k8s.io/v1RoleBinding�
�
%system::leader-locking-kube-scheduler kube-system" *$06cd4639-345d-4e2b-a169-e83426df98232 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B :
Userrbac.authorization.k8s.iosystem:kube-scheduler" /
ServiceAccount kube-scheduler"kube-systemH
rbac.authorization.k8s.ioRole%system::leader-locking-kube-scheduler " 
/registry/rolebindings/kube-system/system:controller:bootstrap-signer
k8s 
+
rbac.authorization.k8s.io/v1RoleBinding�
�
"system:controller:bootstrap-signer kube-system" *$1d0f51f4-d08e-427f-8050-9cb8382a186c2 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B 1
ServiceAccount bootstrap-signer"kube-systemE
rbac.authorization.k8s.ioRole"system:controller:bootstrap-signer " 
/registry/rolebindings/kube-system/system:controller:cloud-provider
k8s 
+
rbac.authorization.k8s.io/v1RoleBinding�
�
 system:controller:cloud-provider kube-system" *$2b353754-a8dd-4ac7-add9-55641a33031a2 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B /
ServiceAccount cloud-provider"kube-systemC
rbac.authorization.k8s.ioRole system:controller:cloud-provider " 
/registry/rolebindings/kube-system/system:controller:token-cleaner
k8s 
+
rbac.authorization.k8s.io/v1RoleBinding�
�
system:controller:token-cleaner kube-system" *$71711c0f-6172-4981-9ebb-a557e567b5332 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:roleRef":{},"f:subjects":{}}B .
ServiceAccount 
token-cleaner"kube-systemB
rbac.authorization.k8s.ioRolesystem:controller:token-cleaner " 
/registry/roles/kube-public/system:controller:bootstrap-signer
k8s 
$
rbac.authorization.k8s.io/v1Role�
�
"system:controller:bootstrap-signer kube-public" *$9f6bf51f-0887-4151-80a7-75f9c2d6ec462 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B  
get
list
watch 
configmaps$
update 
configmaps"cluster-info0
create
patch
update 
events.k8s.ioevents " 
/registry/roles/kube-system/extension-apiserver-authentication-reader
k8s 
$
rbac.authorization.k8s.io/v1Role�
�
)extension-apiserver-authentication-reader kube-system" *$d429d8c3-1395-4513-8839-9a3b75fa72172 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B D
get
list
watch 
configmaps""extension-apiserver-authentication " 
/registry/roles/kube-system/kubeadm:kubelet-config
k8s 
$
rbac.authorization.k8s.io/v1Role�
�
kubeadm:kubelet-config kube-system" *$c1fa4af5-3a0f-4381-8e80-b0c092fded6a2 8 B��� z �W
kubeadmUpdaterbac.authorization.k8s.io/v1"��� 2FieldsV1:
{"f:rules":{}}B #
get 
configmaps"kubelet-config " 
/registry/roles/kube-system/kubeadm:nodes-kubeadm-config
k8s 
$
rbac.authorization.k8s.io/v1Role�
�
kubeadm:nodes-kubeadm-config kube-system" *$3ac42858-e053-419d-b187-03bba7645c392 8 B��� z �W
kubeadmUpdaterbac.authorization.k8s.io/v1"��� 2FieldsV1:
{"f:rules":{}}B #
get 
configmaps"kubeadm-config " 
/registry/roles/kube-system/system::leader-locking-kube-controller-manager
k8s 
$
rbac.authorization.k8s.io/v1Role�
�
.system::leader-locking-kube-controller-manager kube-system" *$32f48901-dba0-42b9-aeff-a1d91449b8f42 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B 
watch 
configmaps4
get
update 
configmaps"kube-controller-manager " 
/registry/roles/kube-system/system::leader-locking-kube-scheduler
k8s 
$
rbac.authorization.k8s.io/v1Role�
�
%system::leader-locking-kube-scheduler kube-system" *$0e33cb16-6cea-41bf-8bdb-4695d248d5972 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B 
watch 
configmaps+
get
update 
configmaps"kube-scheduler " 
/registry/roles/kube-system/system:controller:bootstrap-signer
k8s 
$
rbac.authorization.k8s.io/v1Role�
�
"system:controller:bootstrap-signer kube-system" *$466a790f-49bf-4ac3-94c5-68af847399402 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B 
get
list
watch secrets " 
/registry/roles/kube-system/system:controller:cloud-provider
k8s 
$
rbac.authorization.k8s.io/v1Role�
�
 system:controller:cloud-provider kube-system" *$61729ac7-c33d-45e1-aec0-27ea7883f86b2 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B (
create
get
list
watch 
configmaps " 
/registry/roles/kube-system/system:controller:token-cleaner
k8s 
$
rbac.authorization.k8s.io/v1Role�
�
system:controller:token-cleaner kube-system" *$1b07bd88-92e2-4f15-ab98-1c57297c76a92 8 Bʡ�� Z,
kubernetes.io/bootstrapping
rbac-defaultsb3
+rbac.authorization.kubernetes.io/autoupdatetruez ��
kube-apiserverUpdaterbac.authorization.k8s.io/v1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:annotations":{".":{},"f:rbac.authorization.kubernetes.io/autoupdate":{}},"f:labels":{".":{},"f:kubernetes.io/bootstrapping":{}}},"f:rules":{}}B %
delete
get
list
watch secrets0
create
patch
update 
events.k8s.ioevents " 
/registry/serviceaccounts/default/default
k8s 

v1ServiceAccountN
L
default default" *$18f08ea8-d6e0-4d7d-b829-241ce77fd2312 8 B١�� z  " 
/registry/serviceaccounts/kube-node-lease/default
k8s 

v1ServiceAccountV
T
default kube-node-lease" *$c4db5978-f923-4125-9a9e-d89bf28143792 8 B١�� z  " 
/registry/serviceaccounts/kube-public/default
k8s 

v1ServiceAccountR
P
default kube-public" *$e1c6b5bc-d3fa-4d3d-b3d5-fb78c3b2d40c2 8 B١�� z  " 
/registry/serviceaccounts/kube-system/attachdetach-controller
k8s 

v1ServiceAccountb
`
attachdetach-controller kube-system" *$e8d11395-ec8f-4ad7-b970-866d9d17d9762 8 B̡�� z  " 
/registry/serviceaccounts/kube-system/bootstrap-signer
k8s 

v1ServiceAccount[
Y
bootstrap-signer kube-system" *$19f2e5d7-1f49-419f-84c5-11dd1e42fe1e2 8 B١�� z  " 
/registry/serviceaccounts/kube-system/certificate-controller
k8s 

v1ServiceAccounta
_
certificate-controller kube-system" *$2003dac3-09f2-492d-85e4-2261401013802 8 BΡ�� z  " 
/registry/serviceaccounts/kube-system/clusterrole-aggregation-controller
k8s 

v1ServiceAccountm
k
"clusterrole-aggregation-controller kube-system" *$5d2a02cb-3f30-4108-be36-62ce4ba1edef2 8 B̡�� z  " 
/registry/serviceaccounts/kube-system/cronjob-controller
k8s 

v1ServiceAccount]
[
cronjob-controller kube-system" *$313de00e-dbb8-4140-865b-9d0a84d8e3e32 8 B̡�� z  " 
/registry/serviceaccounts/kube-system/daemon-set-controller
k8s 

v1ServiceAccount`
^
daemon-set-controller kube-system" *$1fb9110e-ca34-47e9-8005-9fbc5496c54e2 8 BΡ�� z  " 
/registry/serviceaccounts/kube-system/default
k8s 

v1ServiceAccountR
P
default kube-system" *$539c7a8b-3d3f-4e71-892e-b61b11b2ad0b2 8 B١�� z  " 
/registry/serviceaccounts/kube-system/deployment-controller
k8s 

v1ServiceAccount`
^
deployment-controller kube-system" *$db714a52-a82f-4006-862b-e19ab1cb2f662 8 B̡�� z  " 
/registry/serviceaccounts/kube-system/disruption-controller
k8s 

v1ServiceAccount`
^
disruption-controller kube-system" *$ead1f2e3-5a3b-40fd-b214-8341a3102bba2 8 B͡�� z  " 
/registry/serviceaccounts/kube-system/endpoint-controller
k8s 

v1ServiceAccount^
\
endpoint-controller kube-system" *$3a901d63-35df-4aee-ac73-af9997a232c92 8 BΡ�� z  " 
/registry/serviceaccounts/kube-system/endpointslice-controller
k8s 

v1ServiceAccountc
a
endpointslice-controller kube-system" *$4629afd7-0695-40ba-9435-3d16ef6efe0c2 8 Bء�� z  " 
/registry/serviceaccounts/kube-system/endpointslicemirroring-controller
k8s 

v1ServiceAccountl
j
!endpointslicemirroring-controller kube-system" *$a0c19033-2142-4e97-a5d0-186299ac0bda2 8 BΡ�� z  " 
/registry/serviceaccounts/kube-system/ephemeral-volume-controller
k8s 

v1ServiceAccountf
d
ephemeral-volume-controller kube-system" *$04cdb4c6-6459-49ee-a574-3950fb8579a72 8 B̡�� z  " 
/registry/serviceaccounts/kube-system/expand-controller
k8s 

v1ServiceAccount\
Z
expand-controller kube-system" *$e40411ee-0db7-4410-aacf-e58ce09167232 8 B̡�� z  " 
/registry/serviceaccounts/kube-system/generic-garbage-collector
k8s 

v1ServiceAccountd
b
generic-garbage-collector kube-system" *$5649abfb-9e87-413d-be6a-882c48984d1e2 8 B̡�� z  " 
/registry/serviceaccounts/kube-system/horizontal-pod-autoscaler
k8s 

v1ServiceAccountd
b
horizontal-pod-autoscaler kube-system" *$f25d1038-e191-46e8-9f8d-33108cc534c72 8 B͡�� z  " 
/registry/serviceaccounts/kube-system/job-controller
k8s 

v1ServiceAccountY
W
job-controller kube-system" *$4a08091a-b1b2-4163-a58e-0dceef1f2ef52 8 B̡�� z  " 
/registry/serviceaccounts/kube-system/namespace-controller
k8s 

v1ServiceAccount_
]
namespace-controller kube-system" *$43f0e6dc-4614-4892-a306-bdd13194b6452 8 B͡�� z  " 
/registry/serviceaccounts/kube-system/node-controller
k8s 

v1ServiceAccountZ
X
node-controller kube-system" *$49a74940-ffeb-432e-95b1-06380cfb64d92 8 BΡ�� z  " 
/registry/serviceaccounts/kube-system/persistent-volume-binder
k8s 

v1ServiceAccountc
a
persistent-volume-binder kube-system" *$be58625f-194c-4287-9704-65ea65791d812 8 Bء�� z  " 
/registry/serviceaccounts/kube-system/pod-garbage-collector
k8s 

v1ServiceAccount`
^
pod-garbage-collector kube-system" *$e6626a0d-5bd2-48f4-abd9-2992762bcc9f2 8 Bء�� z  " 
/registry/serviceaccounts/kube-system/pv-protection-controller
k8s 

v1ServiceAccountc
a
pv-protection-controller kube-system" *$b04bbbff-f68b-490a-b767-f701773d05632 8 B̡�� z  " 
/registry/serviceaccounts/kube-system/pvc-protection-controller
k8s 

v1ServiceAccountd
b
pvc-protection-controller kube-system" *$b3c79c32-cbed-4e39-9c00-2aee29401f812 8 B͡�� z  " 
/registry/serviceaccounts/kube-system/replicaset-controller
k8s 

v1ServiceAccount`
^
replicaset-controller kube-system" *$405e21c6-606d-4144-b376-a3c22e8076422 8 Bء�� z  " 
/registry/serviceaccounts/kube-system/replication-controller
k8s 

v1ServiceAccounta
_
replication-controller kube-system" *$0ec4b94e-26ff-40e7-8bc7-ad0179e50a6d2 8 B̡�� z  " 
/registry/serviceaccounts/kube-system/resourcequota-controller
k8s 

v1ServiceAccountc
a
resourcequota-controller kube-system" *$418473fa-9828-4c19-a0d5-e92664661eb02 8 Bء�� z  " 
/registry/serviceaccounts/kube-system/root-ca-cert-publisher
k8s 

v1ServiceAccounta
_
root-ca-cert-publisher kube-system" *$0b3d3cb8-a2eb-4db0-9081-3a87ca14026c2 8 B١�� z  " 
/registry/serviceaccounts/kube-system/service-account-controller
k8s 

v1ServiceAccounte
c
service-account-controller kube-system" *$049513b8-4e22-4ce3-9813-38b25b56b6b62 8 Bء�� z  " 
/registry/serviceaccounts/kube-system/service-controller
k8s 

v1ServiceAccount]
[
service-controller kube-system" *$246b69d7-e080-441e-8f54-b5050b889e5c2 8 Bء�� z  " 
/registry/serviceaccounts/kube-system/statefulset-controller
k8s 

v1ServiceAccounta
_
statefulset-controller kube-system" *$4c7af433-f012-4872-bf8e-e00c72c899a92 8 B̡�� z  " 
/registry/serviceaccounts/kube-system/token-cleaner
k8s 

v1ServiceAccountX
V

token-cleaner kube-system" *$6addc6ae-4ac8-43a4-a901-bfee18b65e702 8 B١�� z  " 
/registry/serviceaccounts/kube-system/ttl-after-finished-controller
k8s 

v1ServiceAccounth
f
ttl-after-finished-controller kube-system" *$3b650c9f-c603-43ca-a1f5-e2a6eabce3132 8 Bء�� z  " 
/registry/serviceaccounts/kube-system/ttl-controller
k8s 

v1ServiceAccountY
W
ttl-controller kube-system" *$7ba9119d-5970-4f11-ab9e-69d06092dfa42 8 BΡ�� z  " 
/registry/serviceaccounts/tigera-operator/default
k8s 

v1ServiceAccountV
T
default tigera-operator" *$9d2dd651-b8ad-4fd3-87e3-9f41b7e56c162 8 B���� z  " 
/registry/serviceaccounts/tigera-operator/tigera-operator
k8s 

v1ServiceAccount^
\
tigera-operator tigera-operator" *$74c26fa4-4d74-48af-8cf1-241ca111ade92 8 B���� z  " 
/registry/services/endpoints/default/kubernetes
k8s 

v1	Endpoints�
�

kubernetes default" *$b25c0ab5-25b3-4b5e-b09d-05fd1be09cd52 8 Bʡ�� Z/
'endpointslice.kubernetes.io/skip-mirrortruez ��
kube-apiserverUpdatev1"ʡ�� 2FieldsV1:d
b{"f:metadata":{"f:labels":{".":{},"f:endpointslice.kubernetes.io/skip-mirror":{}}},"f:subsets":{}}B "

10.0.133.38 
https�2TCP " 
/registry/services/specs/default/kubernetes
k8s 


v1Service�
�

kubernetes default" *$4a6aeda8-3794-417a-a14c-878bc0c615e02 8 Bʡ�� Z
	component	apiserverZ
provider
kubernetesz ��
kube-apiserverUpdatev1"ʡ�� 2FieldsV1:�
�{"f:metadata":{"f:labels":{".":{},"f:component":{},"f:provider":{}}},"f:spec":{"f:clusterIP":{},"f:internalTrafficPolicy":{},"f:ipFamilyPolicy":{},"f:ports":{".":{},"k:{\"port\":443,\"protocol\":\"TCP\"}":{".":{},"f:name":{},"f:port":{},"f:protocol":{},"f:targetPort":{}}},"f:sessionAffinity":{},"f:type":{}}}B m

httpsTCP�" �2 ( 	10.96.0.1"	ClusterIP:NoneB R Z ` h �SingleStack�	10.96.0.1�IPv4�Cluster
  " 