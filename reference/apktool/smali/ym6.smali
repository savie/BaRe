.class public final Lym6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lrb6;


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Lrb6;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lrb6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lym6;->a:Ljava/util/Set;

    .line 5
    .line 6
    iput-object p2, p0, Lym6;->b:Lrb6;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lgy2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lym6;->a:Ljava/util/Set;

    .line 2
    .line 3
    const-class v1, Lma2;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lym6;->b:Lrb6;

    .line 12
    .line 13
    invoke-interface {p0, p1}, Lrb6;->a(Lgy2;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string p0, "Attempting to publish an undeclared event "

    .line 18
    .line 19
    const-string v0, "."

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Le6;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
