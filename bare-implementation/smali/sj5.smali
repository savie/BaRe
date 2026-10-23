.class public final Lsj5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lor6;


# instance fields
.field public final a:Lns0;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lns0;

    .line 5
    .line 6
    const/16 v1, 0xd

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lns0;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lsj5;->a:Lns0;

    .line 12
    .line 13
    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()Lw74;
    .locals 0

    .line 1
    iget-object p0, p0, Lsj5;->a:Lns0;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "2.0.99"

    .line 2
    .line 3
    return-object p0
.end method
