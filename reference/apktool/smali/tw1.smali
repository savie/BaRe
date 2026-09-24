.class public final Ltw1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Luw1;


# instance fields
.field public final a:Lvy4;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lvy4;

    .line 5
    .line 6
    invoke-direct {v0}, Lvy4;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ltw1;->a:Lvy4;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .locals 1

    .line 1
    new-instance v0, Lsw1;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lsw1;-><init>(IJ)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Ltw1;->a:Lvy4;

    .line 7
    .line 8
    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
