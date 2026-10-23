.class public abstract Lrg2;
.super Lol1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lx74;


# instance fields
.field public final e:Lx74;


# direct methods
.method public constructor <init>(Lx74;)V
    .locals 2

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lol1;

    .line 3
    .line 4
    iget-object v0, v0, Lol1;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lyr7;

    .line 7
    .line 8
    const/4 v1, 0x5

    .line 9
    invoke-direct {p0, v0, v1}, Lol1;-><init>(Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lrg2;->e:Lx74;

    .line 13
    .line 14
    return-void
.end method
