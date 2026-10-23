.class public final Lxa8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lwa8;


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Loe0;

.field public final c:Lya8;


# direct methods
.method public constructor <init>(Ljava/util/Set;Loe0;Lya8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxa8;->a:Ljava/util/Set;

    .line 5
    .line 6
    iput-object p2, p0, Lxa8;->b:Loe0;

    .line 7
    .line 8
    iput-object p3, p0, Lxa8;->c:Lya8;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ldw2;Lo98;)Lrh3;
    .locals 8

    .line 1
    iget-object v0, p0, Lxa8;->a:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v2, Lrh3;

    .line 10
    .line 11
    iget-object v3, p0, Lxa8;->b:Loe0;

    .line 12
    .line 13
    iget-object v7, p0, Lxa8;->c:Lya8;

    .line 14
    .line 15
    move-object v4, p1

    .line 16
    move-object v5, p2

    .line 17
    move-object v6, p3

    .line 18
    invoke-direct/range {v2 .. v7}, Lrh3;-><init>(Loe0;Ljava/lang/String;Ldw2;Lo98;Lya8;)V

    .line 19
    .line 20
    .line 21
    return-object v2

    .line 22
    :cond_0
    move-object v5, p2

    .line 23
    const-string p0, "%s is not supported byt this factory. Supported encodings are: %s."

    .line 24
    .line 25
    filled-new-array {v5, v0}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p0, p1}, Ll0;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method
