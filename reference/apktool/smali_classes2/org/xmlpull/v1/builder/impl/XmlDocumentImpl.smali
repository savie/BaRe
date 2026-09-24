.class public Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lorg/xmlpull/v1/builder/XmlDocument;


# instance fields
.field private characterEncoding:Ljava/lang/String;

.field private children:Ljava/util/List;

.field private root:Lorg/xmlpull/v1/builder/XmlElement;

.field private standalone:Ljava/lang/Boolean;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->children:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->version:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p2, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->standalone:Ljava/lang/Boolean;

    .line 14
    .line 15
    iput-object p3, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->characterEncoding:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public addChild(Ljava/lang/Object;)V
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

.method public addComment(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlComment;
    .locals 1

    .line 1
    new-instance v0, Lorg/xmlpull/v1/builder/impl/XmlCommentImpl;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/xmlpull/v1/builder/impl/XmlCommentImpl;-><init>(Lorg/xmlpull/v1/builder/XmlContainer;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->children:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public addDoctype(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlDoctype;
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

.method public addDocumentElement(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0, p1}, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->addDocumentElement(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object p0

    return-object p0
.end method

.method public addDocumentElement(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1

    .line 1
    new-instance v0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;-><init>(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->getDocumentElement()Lorg/xmlpull/v1/builder/XmlElement;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->setDocumentElement(Lorg/xmlpull/v1/builder/XmlElement;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 17
    .line 18
    const-string p1, "document already has root element"

    .line 19
    .line 20
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public addNotation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNotation;
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

.method public addProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlProcessingInstruction;
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

.method public children()Ljava/util/Iterator;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->children:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
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

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->characterEncoding:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDocumentElement()Lorg/xmlpull/v1/builder/XmlElement;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->root:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public insertChild(ILjava/lang/Object;)V
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

.method public isAllDeclarationsProcessed()Z
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

.method public isStandalone()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->standalone:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public newComment(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlComment;
    .locals 1

    .line 1
    new-instance p0, Lorg/xmlpull/v1/builder/impl/XmlCommentImpl;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, p1}, Lorg/xmlpull/v1/builder/impl/XmlCommentImpl;-><init>(Lorg/xmlpull/v1/builder/XmlContainer;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public newDoctype(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlDoctype;
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

.method public newProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlProcessingInstruction;
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

.method public notations()Ljava/util/Iterator;
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

.method public remocveAllUnparsedEntities()V
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

.method public removeAllChildren()V
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

.method public removeAllNotations()V
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

.method public setCharacterEncodingScheme(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->characterEncoding:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDocumentElement(Lorg/xmlpull/v1/builder/XmlElement;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->children:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-lt v0, v2, :cond_1

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->children:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    iput-object p1, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->root:Lorg/xmlpull/v1/builder/XmlElement;

    .line 19
    .line 20
    invoke-interface {p1, p0}, Lorg/xmlpull/v1/builder/XmlElement;->setParent(Lorg/xmlpull/v1/builder/XmlContainer;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v2, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->children:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v3, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->root:Lorg/xmlpull/v1/builder/XmlElement;

    .line 31
    .line 32
    if-ne v2, v3, :cond_2

    .line 33
    .line 34
    iget-object v1, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->children:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    goto :goto_0
.end method

.method public unparsedEntities()Ljava/util/Iterator;
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
