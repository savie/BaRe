.class public Lorg/xmlpull/v1/builder/impl/XmlElementImpl;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lorg/xmlpull/v1/builder/XmlElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xmlpull/v1/builder/impl/XmlElementImpl$EmptyIterator;
    }
.end annotation


# static fields
.field private static final EMPTY_ITERATOR:Ljava/util/Iterator;


# instance fields
.field private attrs:Ljava/util/List;

.field private children:Ljava/util/List;

.field private name:Ljava/lang/String;

.field private namespace:Lorg/xmlpull/v1/builder/XmlNamespace;

.field private nsList:Ljava/util/List;

.field private parent:Lorg/xmlpull/v1/builder/XmlContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl$EmptyIterator;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl$EmptyIterator;-><init>(Lorg/xmlpull/v1/builder/impl/XmlElementImpl$1;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->EMPTY_ITERATOR:Ljava/util/Iterator;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    new-instance v0, Lorg/xmlpull/v1/builder/impl/XmlNamespaceImpl;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, v1, p1}, Lorg/xmlpull/v1/builder/impl/XmlNamespaceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->namespace:Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 13
    .line 14
    :cond_0
    iput-object p2, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->name:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->namespace:Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 19
    iput-object p2, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->name:Ljava/lang/String;

    return-void
.end method

.method private checkChildParent(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/xmlpull/v1/builder/XmlContainer;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    instance-of v0, p1, Lorg/xmlpull/v1/builder/XmlElement;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p1, Lorg/xmlpull/v1/builder/XmlElement;

    .line 10
    .line 11
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlElement;->getParent()Lorg/xmlpull/v1/builder/XmlContainer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->parent:Lorg/xmlpull/v1/builder/XmlContainer;

    .line 18
    .line 19
    if-ne p1, p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 23
    .line 24
    const-string p1, "child must have no parent to be added to this node"

    .line 25
    .line 26
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_1
    instance-of p0, p1, Lorg/xmlpull/v1/builder/XmlDocument;

    .line 31
    .line 32
    if-nez p0, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    new-instance p0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 36
    .line 37
    const-string p1, "docuemet can not be stored as element child"

    .line 38
    .line 39
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_3
    :goto_0
    return-void
.end method

.method private setChildParent(Ljava/lang/Object;)V
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
    invoke-interface {p1, p0}, Lorg/xmlpull/v1/builder/XmlElement;->setParent(Lorg/xmlpull/v1/builder/XmlContainer;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 18
    const-string v1, "CDATA"

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->addAttribute(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/builder/XmlAttribute;

    move-result-object p0

    return-object p0
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 0

    .line 22
    invoke-virtual {p0, p2, p3}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->newNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;

    move-result-object p2

    move-object p3, p4

    move-object p4, p5

    move p5, p6

    .line 23
    invoke-virtual/range {p0 .. p5}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->addAttribute(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/builder/XmlAttribute;

    move-result-object p0

    return-object p0
.end method

.method public addAttribute(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 19
    invoke-virtual/range {v0 .. v5}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->addAttribute(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/builder/XmlAttribute;

    move-result-object p0

    return-object p0
.end method

.method public addAttribute(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 7

    .line 1
    new-instance v0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    move v6, p5

    .line 9
    invoke-direct/range {v0 .. v6}, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;-><init>(Lorg/xmlpull/v1/builder/XmlElement;Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->addAttribute(Lorg/xmlpull/v1/builder/XmlAttribute;)Lorg/xmlpull/v1/builder/XmlAttribute;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public addAttribute(Lorg/xmlpull/v1/builder/XmlAttribute;)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->ensureAttributeCapacity(I)V

    .line 21
    :cond_0
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public addAttribute(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 6

    .line 17
    const-string v1, "CDATA"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->addAttribute(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/builder/XmlAttribute;

    move-result-object p0

    return-object p0
.end method

.method public addChild(ILjava/lang/Object;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->ensureChildrenCapacity(I)V

    .line 22
    :cond_0
    invoke-direct {p0, p2}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->checkChildParent(Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 24
    invoke-direct {p0, p2}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->setChildParent(Ljava/lang/Object;)V

    return-void
.end method

.method public addChild(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->ensureChildrenCapacity(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->checkChildParent(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->setChildParent(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public addElement(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0, p1}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->addElement(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object p0

    return-object p0
.end method

.method public addElement(Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->addChild(Ljava/lang/Object;)V

    return-object p1
.end method

.method public addElement(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->newElement(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->addChild(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public attributes()Ljava/util/Iterator;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->EMPTY_ITERATOR:Ljava/util/Iterator;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public children()Ljava/util/Iterator;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->EMPTY_ITERATOR:Ljava/util/Iterator;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public declareNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 0

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->newNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;

    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->declareNamespace(Lorg/xmlpull/v1/builder/XmlNamespace;)Lorg/xmlpull/v1/builder/XmlNamespace;

    move-result-object p0

    return-object p0

    .line 31
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string p1, "namespace added to element must have not null prefix"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declareNamespace(Lorg/xmlpull/v1/builder/XmlNamespace;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 1

    .line 1
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlNamespace;->getPrefix()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x5

    .line 12
    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->ensureNamespaceDeclarationsCapacity(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 22
    .line 23
    const-string p1, "namespace added to element must have not null prefix"

    .line 24
    .line 25
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0
.end method

.method public ensureAttributeCapacity(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public ensureChildrenCapacity(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public ensureNamespaceDeclarationsCapacity(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public findAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_7

    .line 3
    .line 4
    iget-object v1, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-lt v2, v1, :cond_1

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_1
    iget-object v3, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lorg/xmlpull/v1/builder/XmlAttribute;

    .line 24
    .line 25
    invoke-interface {v3}, Lorg/xmlpull/v1/builder/XmlAttribute;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    if-eq v4, p2, :cond_2

    .line 30
    .line 31
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_6

    .line 36
    .line 37
    :cond_2
    const-string v4, ""

    .line 38
    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    invoke-interface {v3}, Lorg/xmlpull/v1/builder/XmlAttribute;->getNamespaceName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-eqz v6, :cond_3

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    if-ne p1, v4, :cond_6

    .line 53
    .line 54
    if-nez v5, :cond_6

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_4
    invoke-interface {v3}, Lorg/xmlpull/v1/builder/XmlAttribute;->getNamespace()Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    if-nez v5, :cond_5

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_5
    invoke-interface {v3}, Lorg/xmlpull/v1/builder/XmlAttribute;->getNamespace()Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-interface {v5}, Lorg/xmlpull/v1/builder/XmlNamespace;->getNamespaceName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    if-ne v5, v4, :cond_6

    .line 73
    .line 74
    :goto_1
    return-object v3

    .line 75
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_7
    const-string p0, "attribute name ca not ber null"

    .line 79
    .line 80
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-object v0
.end method

.method public findElementByName(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-lt v2, v0, :cond_1

    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_1
    iget-object v3, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    instance-of v4, v3, Lorg/xmlpull/v1/builder/XmlElement;

    .line 22
    .line 23
    if-eqz v4, :cond_2

    .line 24
    .line 25
    check-cast v3, Lorg/xmlpull/v1/builder/XmlElement;

    .line 26
    .line 27
    invoke-interface {v3}, Lorg/xmlpull/v1/builder/XmlElement;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    return-object v3

    .line 38
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0
.end method

.method public findElementByName(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 0

    .line 43
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public findElementByName(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 0

    .line 41
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public findElementByName(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 0

    .line 42
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getBaseUri()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 2
    .line 3
    const-string v0, "not implemented"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getNamespace()Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->namespace:Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 2
    .line 3
    return-object p0
.end method

.method public getNamespaceName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->namespace:Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lorg/xmlpull/v1/builder/XmlNamespace;->getNamespaceName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public getParent()Lorg/xmlpull/v1/builder/XmlContainer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->parent:Lorg/xmlpull/v1/builder/XmlContainer;

    .line 2
    .line 3
    return-object p0
.end method

.method public hasAttributes()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-lez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public hasChild(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    move v0, v1

    .line 8
    :goto_0
    iget-object v2, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-lt v0, v2, :cond_1

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    iget-object v2, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-ne v2, p1, :cond_2

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0
.end method

.method public hasChildren()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-lez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public hasNamespaceDeclarations()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-lez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public insertChild(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public lookupNamespaceByName(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->hasNamespaceDeclarations()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    iget-object v1, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-lt v2, v1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v3, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 27
    .line 28
    invoke-interface {v3}, Lorg/xmlpull/v1/builder/XmlNamespace;->getNamespaceName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    return-object v3

    .line 39
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    :goto_1
    return-object v0

    .line 43
    :cond_3
    const-string p0, "namespace name can not ber null"

    .line 44
    .line 45
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method public lookupNamespaceByPrefix(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->hasNamespaceDeclarations()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    iget-object v1, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-lt v2, v1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v3, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 27
    .line 28
    invoke-interface {v3}, Lorg/xmlpull/v1/builder/XmlNamespace;->getPrefix()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    return-object v3

    .line 39
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    :goto_1
    return-object v0

    .line 43
    :cond_3
    const-string p0, "namespace prefix can not ber null"

    .line 44
    .line 45
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method public namespaces()Ljava/util/Iterator;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->EMPTY_ITERATOR:Ljava/util/Iterator;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public newElement(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->newElement(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public newElement(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 0

    .line 7
    new-instance p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;

    invoke-direct {p0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public newElement(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 0

    .line 8
    new-instance p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;

    invoke-direct {p0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;-><init>(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)V

    return-object p0
.end method

.method public newNamespace(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->newNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public newNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 0

    .line 7
    new-instance p0, Lorg/xmlpull/v1/builder/impl/XmlNamespaceImpl;

    invoke-direct {p0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlNamespaceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public removeAllAttributes()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    .line 3
    .line 4
    return-void
.end method

.method public removeAllChildren()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    .line 3
    .line 4
    return-void
.end method

.method public removeAllNamespaceDeclarations()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    .line 3
    .line 4
    return-void
.end method

.method public removeAttribute(Lorg/xmlpull/v1/builder/XmlAttribute;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0
.end method

.method public removeChild(Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->hasChildren()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, -0x1

    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void

    .line 24
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 25
    .line 26
    const-string p1, "no children to remove"

    .line 27
    .line 28
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_2
    const-string p0, "child to remove can not be null"

    .line 33
    .line 34
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public replaceChild(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->hasChildren()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const/4 v0, -0x1

    .line 18
    if-eq p2, v0, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {p0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 27
    .line 28
    const-string p1, "could not find child to replace"

    .line 29
    .line 30
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 35
    .line 36
    const-string p1, "no children available for replacement"

    .line 37
    .line 38
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :cond_2
    const-string p0, "old child to replace can not be null"

    .line 43
    .line 44
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    const-string p0, "new child to replace can not be null"

    .line 49
    .line 50
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public setBaseUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 2
    .line 3
    const-string p1, "not implemented"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNamespace(Lorg/xmlpull/v1/builder/XmlNamespace;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->namespace:Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 2
    .line 3
    return-void
.end method

.method public setParent(Lorg/xmlpull/v1/builder/XmlContainer;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    instance-of v0, p1, Lorg/xmlpull/v1/builder/XmlElement;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Lorg/xmlpull/v1/builder/XmlElement;

    .line 9
    .line 10
    invoke-interface {v0}, Lorg/xmlpull/v1/builder/XmlElement;->children()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-ne v1, p0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 28
    .line 29
    const-string p1, "this element must be child of parent to set its parent"

    .line 30
    .line 31
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0

    .line 35
    :cond_2
    instance-of v0, p1, Lorg/xmlpull/v1/builder/XmlDocument;

    .line 36
    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    move-object v0, p1

    .line 40
    check-cast v0, Lorg/xmlpull/v1/builder/XmlDocument;

    .line 41
    .line 42
    invoke-interface {v0}, Lorg/xmlpull/v1/builder/XmlDocument;->getDocumentElement()Lorg/xmlpull/v1/builder/XmlElement;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-ne v0, p0, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    new-instance p0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 50
    .line 51
    const-string p1, "this element must be root docuemnt element to have document set as parent but already different element is set as root document element"

    .line 52
    .line 53
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_4
    :goto_0
    iput-object p1, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->parent:Lorg/xmlpull/v1/builder/XmlContainer;

    .line 58
    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "name["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->name:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    .line 12
    .line 13
    const-string v1, "] namespace["

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->namespace:Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 19
    .line 20
    invoke-interface {p0}, Lorg/xmlpull/v1/builder/XmlNamespace;->getNamespaceName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    .line 26
    .line 27
    const-string p0, "]"

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method
