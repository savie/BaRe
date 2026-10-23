.class public final Lxo3;
.super Lmg7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxo3;->a:Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Lcw7;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lxo3;->a:Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 5
    .line 6
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->U(Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;)Lkp3;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lkp3;->k()Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final c(Lcw7;)V
    .locals 1

    .line 1
    sget p1, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->U:I

    .line 2
    .line 3
    iget-object p0, p0, Lxo3;->a:Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->V()Lyo3;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p1, p1, Lyo3;->d:Landroidx/viewpager/widget/ViewPager;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    move p1, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    xor-int/2addr p1, v0

    .line 22
    invoke-virtual {p0, p1}, Lil0;->A(Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
