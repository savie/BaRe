.class public final Lmn2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lf77;


# instance fields
.field public final a:Lf77;

.field public final b:Lhi;


# direct methods
.method public constructor <init>(Lf77;Lhi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmn2;->a:Lf77;

    .line 5
    .line 6
    iput-object p2, p0, Lmn2;->b:Lhi;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Lln2;

    .line 2
    .line 3
    iget-object v1, p0, Lmn2;->a:Lf77;

    .line 4
    .line 5
    invoke-interface {v1}, Lf77;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object p0, p0, Lmn2;->b:Lhi;

    .line 10
    .line 11
    invoke-direct {v0, v1, p0}, Lln2;-><init>(Ljava/util/Iterator;Lhi;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
