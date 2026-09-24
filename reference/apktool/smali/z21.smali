.class public final Lz21;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:La31;

.field public final synthetic b:Lic5;

.field public final synthetic c:Lfc5;

.field public final synthetic d:Lzq8;


# direct methods
.method public constructor <init>(Lzq8;La31;Lic5;Lfc5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz21;->d:Lzq8;

    .line 5
    .line 6
    iput-object p2, p0, Lz21;->a:La31;

    .line 7
    .line 8
    iput-object p3, p0, Lz21;->b:Lic5;

    .line 9
    .line 10
    iput-object p4, p0, Lz21;->c:Lfc5;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lz21;->d:Lzq8;

    .line 2
    .line 3
    iget-object v0, v0, Lzq8;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lb31;

    .line 6
    .line 7
    iget-object v1, p0, Lz21;->a:La31;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    iput-boolean v2, v0, Lb31;->S:Z

    .line 13
    .line 14
    iget-object v1, v1, La31;->b:Lfc5;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v1, v2}, Lfc5;->c(Z)V

    .line 18
    .line 19
    .line 20
    iput-boolean v2, v0, Lb31;->S:Z

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lz21;->b:Lic5;

    .line 23
    .line 24
    invoke-virtual {v0}, Lic5;->isEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Lic5;->hasSubMenu()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    const/4 v2, 0x0

    .line 38
    iget-object p0, p0, Lz21;->c:Lfc5;

    .line 39
    .line 40
    invoke-virtual {p0, v0, v2, v1}, Lfc5;->q(Landroid/view/MenuItem;Lwc5;I)Z

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method
