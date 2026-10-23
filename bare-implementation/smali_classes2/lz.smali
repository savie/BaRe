.class public final Llz;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lgz7;


# direct methods
.method public constructor <init>(Lc40;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class p1, Llz;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Llz;->a:Ljava/lang/String;

    .line 11
    .line 12
    sget-object p1, Lgz7;->WAITING:Lgz7;

    .line 13
    .line 14
    iput-object p1, p0, Llz;->b:Lgz7;

    .line 15
    .line 16
    return-void
.end method
