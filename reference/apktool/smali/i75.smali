.class public final Li75;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lca3;Ls02;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lfh8;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lfh8;-><init>(Li75;Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Li75;->d:Ljava/lang/Object;

    .line 11
    .line 12
    new-instance v0, Lfh8;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v0, p0, v2}, Lfh8;-><init>(Li75;Z)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Li75;->e:Ljava/lang/Object;

    .line 19
    .line 20
    new-instance v0, Li66;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v2, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v2, v0, Li66;->b:Ljava/lang/Object;

    .line 31
    .line 32
    const/16 v2, 0x80

    .line 33
    .line 34
    iput v2, v0, Li66;->a:I

    .line 35
    .line 36
    iput-object v0, p0, Li75;->f:Ljava/lang/Object;

    .line 37
    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;-><init>(Ljava/lang/Object;Z)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Li75;->k:Ljava/lang/Object;

    .line 45
    .line 46
    iput-object p1, p0, Li75;->c:Ljava/lang/Object;

    .line 47
    .line 48
    new-instance p1, Llf5;

    .line 49
    .line 50
    invoke-direct {p1, p2}, Llf5;-><init>(Lca3;)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Li75;->a:Ljava/lang/Object;

    .line 54
    .line 55
    iput-object p3, p0, Li75;->b:Ljava/lang/Object;

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Li75;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;

    .line 4
    .line 5
    return-object p0
.end method
