.class public final Le57;
.super Lg57;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic G:Lj57;


# direct methods
.method public constructor <init>(Lj57;Lz27;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le57;->G:Lj57;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lg57;-><init>(Lj57;Lz27;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final r(Lorg/swiftapps/swiftbackup/home/schedule/data/b;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lg57;->s(Lorg/swiftapps/swiftbackup/home/schedule/data/b;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lrf4;

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    iget-object v2, p0, Le57;->G:Lj57;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, p1}, Lrf4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lg57;->z:Lcom/google/android/material/button/MaterialButton;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
