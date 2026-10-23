.class public Lcom/nimbusds/jose/util/Resource;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/Immutable;
.end annotation


# instance fields
.field private final content:Ljava/lang/String;

.field private final contentType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/nimbusds/jose/util/Resource;->content:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/nimbusds/jose/util/Resource;->contentType:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/util/Resource;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/util/Resource;->contentType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
