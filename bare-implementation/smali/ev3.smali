.class public final Lev3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lf77;


# instance fields
.field public final a:Lbt3;

.field public final b:Lmt3;


# direct methods
.method public constructor <init>(Lbt3;Lmt3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lev3;->a:Lbt3;

    .line 5
    .line 6
    iput-object p2, p0, Lev3;->b:Lmt3;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Ldv3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ldv3;-><init>(Lev3;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
