.class public final Lz56;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ld67;


# instance fields
.field public final a:Ljava/util/LinkedList;

.field public final b:Lof2;


# direct methods
.method public constructor <init>(Lof2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lz56;->a:Ljava/util/LinkedList;

    .line 10
    .line 11
    iput-object p1, p0, Lz56;->b:Lof2;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final J(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Luq4;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final b0()Ler4;
    .locals 1

    .line 1
    new-instance v0, Ler4;

    .line 2
    .line 3
    iget-object p0, p0, Lz56;->b:Lof2;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Ler4;-><init>(Lq27;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getAttributes()Ler4;
    .locals 1

    .line 1
    new-instance v0, Ler4;

    .line 2
    .line 3
    iget-object p0, p0, Lz56;->b:Lof2;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Ler4;-><init>(Lq27;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getText()Luq4;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    .line 1
    iget-object p0, p0, Lz56;->a:Ljava/util/LinkedList;

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

.method public final r(Ljava/lang/String;)Ld67;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method
