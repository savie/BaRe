.class public final synthetic Lbs1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lrt3;


# instance fields
.field public final synthetic a:Lokhttp3/internal/concurrent/TaskRunner;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic k:Z

.field public final synthetic n:Z

.field public final synthetic p:Lokhttp3/internal/connection/RouteDatabase;


# direct methods
.method public synthetic constructor <init>(IIIIILokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RouteDatabase;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p6, p0, Lbs1;->a:Lokhttp3/internal/concurrent/TaskRunner;

    .line 5
    .line 6
    iput p1, p0, Lbs1;->b:I

    .line 7
    .line 8
    iput p2, p0, Lbs1;->c:I

    .line 9
    .line 10
    iput p3, p0, Lbs1;->d:I

    .line 11
    .line 12
    iput p4, p0, Lbs1;->e:I

    .line 13
    .line 14
    iput p5, p0, Lbs1;->f:I

    .line 15
    .line 16
    iput-boolean p8, p0, Lbs1;->k:Z

    .line 17
    .line 18
    iput-boolean p9, p0, Lbs1;->n:Z

    .line 19
    .line 20
    iput-object p7, p0, Lbs1;->p:Lokhttp3/internal/connection/RouteDatabase;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    check-cast v2, Lokhttp3/internal/connection/RealConnectionPool;

    .line 6
    .line 7
    move-object/from16 v10, p2

    .line 8
    .line 9
    check-cast v10, Lokhttp3/Address;

    .line 10
    .line 11
    move-object/from16 v12, p3

    .line 12
    .line 13
    check-cast v12, Lokhttp3/internal/connection/ConnectionUser;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    new-instance v13, Lokhttp3/internal/connection/FastFallbackExchangeFinder;

    .line 25
    .line 26
    new-instance v14, Lokhttp3/internal/connection/ForceConnectRoutePlanner;

    .line 27
    .line 28
    new-instance v1, Lokhttp3/internal/connection/RealRoutePlanner;

    .line 29
    .line 30
    move-object v3, v1

    .line 31
    iget-object v1, v0, Lbs1;->a:Lokhttp3/internal/concurrent/TaskRunner;

    .line 32
    .line 33
    move-object v4, v3

    .line 34
    iget v3, v0, Lbs1;->b:I

    .line 35
    .line 36
    move-object v5, v4

    .line 37
    iget v4, v0, Lbs1;->c:I

    .line 38
    .line 39
    move-object v6, v5

    .line 40
    iget v5, v0, Lbs1;->d:I

    .line 41
    .line 42
    move-object v7, v6

    .line 43
    iget v6, v0, Lbs1;->e:I

    .line 44
    .line 45
    move-object v8, v7

    .line 46
    iget v7, v0, Lbs1;->f:I

    .line 47
    .line 48
    move-object v9, v8

    .line 49
    iget-boolean v8, v0, Lbs1;->k:Z

    .line 50
    .line 51
    move-object v11, v9

    .line 52
    iget-boolean v9, v0, Lbs1;->n:Z

    .line 53
    .line 54
    iget-object v0, v0, Lbs1;->p:Lokhttp3/internal/connection/RouteDatabase;

    .line 55
    .line 56
    move-object v15, v11

    .line 57
    move-object v11, v0

    .line 58
    move-object v0, v15

    .line 59
    invoke-direct/range {v0 .. v12}, Lokhttp3/internal/connection/RealRoutePlanner;-><init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;IIIIIZZLokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;Lokhttp3/internal/connection/ConnectionUser;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {v14, v0}, Lokhttp3/internal/connection/ForceConnectRoutePlanner;-><init>(Lokhttp3/internal/connection/RealRoutePlanner;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {v13, v14, v1}, Lokhttp3/internal/connection/FastFallbackExchangeFinder;-><init>(Lokhttp3/internal/connection/RoutePlanner;Lokhttp3/internal/concurrent/TaskRunner;)V

    .line 66
    .line 67
    .line 68
    return-object v13
.end method
