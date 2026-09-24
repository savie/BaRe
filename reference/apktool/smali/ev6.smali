.class public abstract Lev6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lhw5;


# instance fields
.field public a:Ldv6;

.field public b:Lzu6;


# direct methods
.method public constructor <init>(Ldv6;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lev6;->a:Ldv6;

    return-void
.end method

.method public constructor <init>(Ldv6;Lzu6;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lev6;->a:Ldv6;

    .line 17
    iput-object p2, p0, Lev6;->b:Lzu6;

    .line 18
    invoke-interface {p1, p2}, Ldv6;->a(Lzu6;)V

    return-void
.end method

.method public constructor <init>(Ldv6;[B)V
    .locals 3

    .line 1
    new-instance v0, Lzu6;

    .line 2
    .line 3
    sget-object v1, Lvw2;->b:Luw2;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v0, p2, v2, v1}, Low0;-><init>([BZLvw2;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, v0}, Lev6;-><init>(Ldv6;Lzu6;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public b()Lzu6;
    .locals 0

    .line 1
    iget-object p0, p0, Lev6;->b:Lzu6;

    .line 2
    .line 3
    return-object p0
.end method

.method public c()Ldv6;
    .locals 0

    .line 1
    iget-object p0, p0, Lev6;->a:Ldv6;

    .line 2
    .line 3
    return-object p0
.end method
