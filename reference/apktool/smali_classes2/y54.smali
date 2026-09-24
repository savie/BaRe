.class public final Ly54;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lorg/swiftapps/swiftbackup/home/HomeActivity;

.field public final b:Lca2;

.field public final c:[I

.field public final d:I


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/home/HomeActivity;Lca2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly54;->a:Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 5
    .line 6
    iput-object p2, p0, Ly54;->b:Lca2;

    .line 7
    .line 8
    iget-object p1, p2, Lca2;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 11
    .line 12
    invoke-virtual {p1}, Lkm0;->getIndicatorColor()[I

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    array-length v0, p2

    .line 20
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iput-object p2, p0, Ly54;->c:[I

    .line 25
    .line 26
    invoke-virtual {p1}, Lkm0;->getTrackColor()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, p0, Ly54;->d:I

    .line 31
    .line 32
    return-void
.end method
