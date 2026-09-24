.class public final Llu5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lga6;


# static fields
.field public static final c:Lm0;

.field public static final d:Lku5;


# instance fields
.field public a:Lig2;

.field public volatile b:Lga6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lm0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Llu5;->c:Lm0;

    .line 7
    .line 8
    new-instance v0, Lku5;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Llu5;->d:Lku5;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lm0;Lga6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llu5;->a:Lig2;

    .line 5
    .line 6
    iput-object p2, p0, Llu5;->b:Lga6;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lig2;)V
    .locals 3

    .line 1
    iget-object v0, p0, Llu5;->b:Lga6;

    .line 2
    .line 3
    sget-object v1, Llu5;->d:Lku5;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lig2;->c(Lga6;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Llu5;->b:Lga6;

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    move-object v1, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v1, p0, Llu5;->a:Lig2;

    .line 19
    .line 20
    new-instance v2, Lgp3;

    .line 21
    .line 22
    invoke-direct {v2, v1, p1}, Lgp3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Llu5;->a:Lig2;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-interface {p1, v0}, Lig2;->c(Lga6;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Llu5;->b:Lga6;

    .line 2
    .line 3
    invoke-interface {p0}, Lga6;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
