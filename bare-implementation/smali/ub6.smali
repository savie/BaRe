.class public final Lub6;
.super Lry2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lorg/xmlpull/v1/XmlPullParser;

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lub6;->c:I

    .line 12
    .line 13
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lub6;->b:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p1, p0, Lub6;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final G()I
    .locals 0

    .line 1
    iget p0, p0, Lub6;->c:I

    .line 2
    .line 3
    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lub6;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
