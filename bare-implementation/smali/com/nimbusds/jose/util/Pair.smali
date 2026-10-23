.class public Lcom/nimbusds/jose/util/Pair;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/Immutable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final left:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field private final right:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "TR;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/nimbusds/jose/util/Pair;->left:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/nimbusds/jose/util/Pair;->right:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/nimbusds/jose/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "TR;)",
            "Lcom/nimbusds/jose/util/Pair<",
            "T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nimbusds/jose/util/Pair;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/nimbusds/jose/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public getLeft()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/util/Pair;->left:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRight()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/util/Pair;->right:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method
