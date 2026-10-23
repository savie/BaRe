.class public Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lorg/xmlpull/v1/builder/XmlAttribute;


# instance fields
.field private default_:Z

.field private name_:Ljava/lang/String;

.field private namespace_:Lorg/xmlpull/v1/builder/XmlNamespace;

.field private owner_:Lorg/xmlpull/v1/builder/XmlElement;

.field private prefix_:Ljava/lang/String;

.field private type_:Ljava/lang/String;

.field private value_:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/builder/XmlElement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "CDATA"

    .line 5
    .line 6
    iput-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->type_:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->owner_:Lorg/xmlpull/v1/builder/XmlElement;

    .line 9
    .line 10
    iput-object p2, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->name_:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    iput-object p3, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->value_:Ljava/lang/String;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string p0, "attribute value can not be null"

    .line 18
    .line 19
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    throw p0
.end method

.method public constructor <init>(Lorg/xmlpull/v1/builder/XmlElement;Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p3, p4, p5}, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;-><init>(Lorg/xmlpull/v1/builder/XmlElement;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iput-object p2, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->type_:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/builder/XmlElement;Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p3, p4, p5}, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;-><init>(Lorg/xmlpull/v1/builder/XmlElement;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 29
    iput-object p2, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->type_:Ljava/lang/String;

    xor-int/lit8 p1, p6, 0x1

    .line 30
    iput-boolean p1, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->default_:Z

    return-void

    .line 31
    :cond_0
    const-string p0, "attribute type can not be null"

    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lorg/xmlpull/v1/builder/XmlElement;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p3, p4}, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;-><init>(Lorg/xmlpull/v1/builder/XmlElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iput-object p2, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->namespace_:Lorg/xmlpull/v1/builder/XmlNamespace;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->name_:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getNamespace()Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->namespace_:Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 2
    .line 3
    return-object p0
.end method

.method public getNamespaceName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->namespace_:Lorg/xmlpull/v1/builder/XmlNamespace;

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

.method public getOwner()Lorg/xmlpull/v1/builder/XmlElement;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->owner_:Lorg/xmlpull/v1/builder/XmlElement;

    .line 2
    .line 3
    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->type_:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->value_:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public isSpecified()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->default_:Z

    .line 2
    .line 3
    xor-int/lit8 p0, p0, 0x1

    .line 4
    .line 5
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "name="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->name_:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    .line 12
    .line 13
    const-string v1, " value="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->value_:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method
