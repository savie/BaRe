.class public final Lz60;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final h:Ly60;


# instance fields
.field public final a:Lz28;

.field public final b:Lkm8;

.field public final c:Ly60;

.field public final d:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public e:Ljava/util/List;

.field public f:Ljava/util/List;

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ly60;

    .line 2
    .line 3
    invoke-direct {v0}, Ly60;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lz60;->h:Ly60;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lz28;Lkm8;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lz60;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 12
    .line 13
    iput-object v0, p0, Lz60;->f:Ljava/util/List;

    .line 14
    .line 15
    iput-object p1, p0, Lz60;->a:Lz28;

    .line 16
    .line 17
    iput-object p2, p0, Lz60;->b:Lkm8;

    .line 18
    .line 19
    sget-object p1, Lz60;->h:Ly60;

    .line 20
    .line 21
    iput-object p1, p0, Lz60;->c:Ly60;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object p0, p0, Lz60;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljw4;

    .line 18
    .line 19
    iget-object v0, v0, Ljw4;->a:Lmt4;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method
