.class public Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lorg/xmlpull/v1/builder/XmlElement;


# instance fields
.field private parent:Lorg/xmlpull/v1/builder/XmlContainer;

.field private target:Lorg/xmlpull/v1/builder/XmlElement;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/builder/XmlElement;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 5
    .line 6
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlElement;->getParent()Lorg/xmlpull/v1/builder/XmlContainer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlElement;->getParent()Lorg/xmlpull/v1/builder/XmlContainer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v1, v0, Lorg/xmlpull/v1/builder/XmlDocument;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    move-object v1, v0

    .line 21
    check-cast v1, Lorg/xmlpull/v1/builder/XmlDocument;

    .line 22
    .line 23
    invoke-interface {v1, p0}, Lorg/xmlpull/v1/builder/XmlDocument;->setDocumentElement(Lorg/xmlpull/v1/builder/XmlElement;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    instance-of v1, v0, Lorg/xmlpull/v1/builder/XmlElement;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    check-cast v0, Lorg/xmlpull/v1/builder/XmlElement;

    .line 31
    .line 32
    invoke-interface {v0, p0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->replaceChild(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlElement;->children()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-direct {p0, v0}, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->fixParent(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0
.end method

.method private fixElementParent(Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lorg/xmlpull/v1/builder/XmlElement;->setParent(Lorg/xmlpull/v1/builder/XmlContainer;)V

    .line 2
    .line 3
    .line 4
    return-object p1
.end method

.method private fixParent(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lorg/xmlpull/v1/builder/XmlElement;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->fixElementParent(Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 0

    .line 10
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/builder/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;

    move-result-object p0

    return-object p0
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface/range {p0 .. p6}, Lorg/xmlpull/v1/builder/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/builder/XmlAttribute;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public addAttribute(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 0

    .line 11
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/xmlpull/v1/builder/XmlElement;->addAttribute(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;

    move-result-object p0

    return-object p0
.end method

.method public addAttribute(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 0

    .line 9
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface/range {p0 .. p5}, Lorg/xmlpull/v1/builder/XmlElement;->addAttribute(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/builder/XmlAttribute;

    move-result-object p0

    return-object p0
.end method

.method public addAttribute(Lorg/xmlpull/v1/builder/XmlAttribute;)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 0

    .line 12
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {p0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->addAttribute(Lorg/xmlpull/v1/builder/XmlAttribute;)Lorg/xmlpull/v1/builder/XmlAttribute;

    move-result-object p0

    return-object p0
.end method

.method public addAttribute(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 0

    .line 8
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {p0, p1, p2, p3}, Lorg/xmlpull/v1/builder/XmlElement;->addAttribute(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;

    move-result-object p0

    return-object p0
.end method

.method public addChild(ILjava/lang/Object;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/builder/XmlElement;->addChild(ILjava/lang/Object;)V

    .line 11
    invoke-direct {p0, p2}, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->fixParent(Ljava/lang/Object;)V

    return-void
.end method

.method public addChild(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->addChild(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->fixParent(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public addElement(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->addElement(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->fixElementParent(Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object p0

    return-object p0
.end method

.method public addElement(Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->addElement(Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->fixElementParent(Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public addElement(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/builder/XmlElement;->addElement(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->fixElementParent(Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object p0

    return-object p0
.end method

.method public attributes()Ljava/util/Iterator;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/builder/XmlElement;->attributes()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public children()Ljava/util/Iterator;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/builder/XmlElement;->children()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public declareNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/builder/XmlElement;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public declareNamespace(Lorg/xmlpull/v1/builder/XmlNamespace;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 0

    .line 8
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {p0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->declareNamespace(Lorg/xmlpull/v1/builder/XmlNamespace;)Lorg/xmlpull/v1/builder/XmlNamespace;

    move-result-object p0

    return-object p0
.end method

.method public ensureAttributeCapacity(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->ensureAttributeCapacity(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public ensureChildrenCapacity(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->ensureChildrenCapacity(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public ensureNamespaceDeclarationsCapacity(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->ensureNamespaceDeclarationsCapacity(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public findAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/builder/XmlElement;->findAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public findElementByName(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 0

    .line 9
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {p0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->findElementByName(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object p0

    return-object p0
.end method

.method public findElementByName(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 0

    .line 8
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/builder/XmlElement;->findElementByName(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object p0

    return-object p0
.end method

.method public findElementByName(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 0

    .line 10
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {p0, p1, p2, p3}, Lorg/xmlpull/v1/builder/XmlElement;->findElementByName(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object p0

    return-object p0
.end method

.method public findElementByName(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/builder/XmlElement;->findElementByName(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getBaseUri()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/builder/XmlElement;->getBaseUri()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/builder/XmlElement;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getNamespace()Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/builder/XmlElement;->getNamespace()Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getNamespaceName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/builder/XmlElement;->getNamespaceName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getParent()Lorg/xmlpull/v1/builder/XmlContainer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->parent:Lorg/xmlpull/v1/builder/XmlContainer;

    .line 2
    .line 3
    return-object p0
.end method

.method public hasAttributes()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/builder/XmlElement;->hasAttributes()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public hasChild(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->hasChild(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public hasChildren()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/builder/XmlElement;->hasChildren()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public hasNamespaceDeclarations()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/builder/XmlElement;->hasNamespaceDeclarations()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public insertChild(ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/builder/XmlElement;->insertChild(ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2}, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->fixParent(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public lookupNamespaceByName(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->lookupNamespaceByName(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public lookupNamespaceByPrefix(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->lookupNamespaceByPrefix(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public namespaces()Ljava/util/Iterator;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/builder/XmlElement;->namespaces()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public newElement(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 0

    .line 9
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {p0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->newElement(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object p0

    return-object p0
.end method

.method public newElement(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 0

    .line 8
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/builder/XmlElement;->newElement(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object p0

    return-object p0
.end method

.method public newElement(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/builder/XmlElement;->newElement(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public newNamespace(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 0

    .line 8
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {p0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->newNamespace(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;

    move-result-object p0

    return-object p0
.end method

.method public newNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/builder/XmlElement;->newNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public removeAllAttributes()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/builder/XmlElement;->removeAllAttributes()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public removeAllChildren()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/builder/XmlElement;->removeAllChildren()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public removeAllNamespaceDeclarations()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/builder/XmlElement;->removeAllNamespaceDeclarations()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public removeAttribute(Lorg/xmlpull/v1/builder/XmlAttribute;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->removeAttribute(Lorg/xmlpull/v1/builder/XmlAttribute;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public removeChild(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->removeChild(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public replaceChild(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/builder/XmlElement;->replaceChild(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->fixParent(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setBaseUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->setBaseUri(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->setName(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setNamespace(Lorg/xmlpull/v1/builder/XmlNamespace;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->setNamespace(Lorg/xmlpull/v1/builder/XmlNamespace;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setParent(Lorg/xmlpull/v1/builder/XmlContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->parent:Lorg/xmlpull/v1/builder/XmlContainer;

    .line 2
    .line 3
    return-void
.end method
