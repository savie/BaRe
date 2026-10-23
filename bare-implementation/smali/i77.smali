.class public final Li77;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lf77;


# instance fields
.field public final synthetic a:Lqt3;


# direct methods
.method public constructor <init>(Lqt3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li77;->a:Lqt3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lg77;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Li77;->a:Lqt3;

    .line 7
    .line 8
    invoke-static {v0, v0, p0}, Lnc8;->o(Ljv1;Ljv1;Lqt3;)Ljv1;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iput-object p0, v0, Lg77;->d:Ljv1;

    .line 13
    .line 14
    return-object v0
.end method
