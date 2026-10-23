.class public final Luo3;
.super Landroidx/fragment/app/b0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final g:Ljava/util/ArrayList;

.field public final synthetic h:Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;Lur3;)V
    .locals 1

    .line 1
    iput-object p1, p0, Luo3;->h:Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/fragment/app/b0;-><init>(Lur3;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lto3;->getEntries()Ljx2;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance p2, Ljava/util/ArrayList;

    .line 11
    .line 12
    const/16 v0, 0xa

    .line 13
    .line 14
    invoke-static {p1, v0}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    check-cast p1, Lz3;

    .line 22
    .line 23
    new-instance v0, Lw3;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Lw3;-><init>(Lz3;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {v0}, Lw3;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Lw3;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lto3;

    .line 39
    .line 40
    invoke-virtual {p1}, Lto3;->newFragment()Lkp3;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iput-object p2, p0, Luo3;->g:Ljava/util/ArrayList;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final c()I
    .locals 0

    .line 1
    iget-object p0, p0, Luo3;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final d(I)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-static {}, Lto3;->getEntries()Ljx2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lkx2;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lkx2;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lto3;

    .line 12
    .line 13
    iget-object p0, p0, Luo3;->h:Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Lto3;->getToolbarTitle(Lil0;)Ljava/lang/CharSequence;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public final g(I)Landroidx/fragment/app/o;
    .locals 0

    .line 1
    iget-object p0, p0, Luo3;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lkp3;

    .line 8
    .line 9
    return-object p0
.end method
