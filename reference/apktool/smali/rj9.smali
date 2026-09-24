.class public final Lrj9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk9;


# instance fields
.field public final a:Ljf9;

.field public final b:Ljl9;


# direct methods
.method public constructor <init>(Ljl9;Lwg9;Ljf9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lrj9;->b:Ljl9;

    .line 5
    .line 6
    iput-object p3, p0, Lrj9;->a:Ljf9;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lrj9;->b:Ljl9;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object p0, p1

    .line 7
    check-cast p0, Lih9;

    .line 8
    .line 9
    iget-object p0, p0, Lih9;->zzc:Lil9;

    .line 10
    .line 11
    iget-boolean v0, p0, Lil9;->d:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lil9;->d:Z

    .line 17
    .line 18
    :cond_0
    invoke-static {p1}, Leq3;->g(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    throw p0
.end method

.method public final b(Lih9;Lih9;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lrj9;->b:Ljl9;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Lih9;->zzc:Lil9;

    .line 7
    .line 8
    iget-object p1, p2, Lih9;->zzc:Lil9;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lil9;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x1

    .line 19
    return p0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lrj9;->b:Ljl9;

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lnk9;->a(Ljl9;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(Ljava/lang/Object;[BIILof9;)V
    .locals 0

    .line 1
    move-object p0, p1

    .line 2
    check-cast p0, Lih9;

    .line 3
    .line 4
    iget-object p2, p0, Lih9;->zzc:Lil9;

    .line 5
    .line 6
    sget-object p3, Lil9;->e:Lil9;

    .line 7
    .line 8
    if-eq p2, p3, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lil9;->a()Lil9;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iput-object p2, p0, Lih9;->zzc:Lil9;

    .line 16
    .line 17
    :goto_0
    invoke-static {p1}, Leq3;->g(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    throw p0
.end method

.method public final e(Lih9;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lrj9;->b:Ljl9;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Lih9;->zzc:Lil9;

    .line 7
    .line 8
    invoke-virtual {p0}, Lil9;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final f(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Leq3;->g(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    throw p0
.end method

.method public final zzd()Lih9;
    .locals 1

    .line 1
    iget-object p0, p0, Lrj9;->a:Ljf9;

    .line 2
    .line 3
    instance-of v0, p0, Lih9;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lih9;

    .line 8
    .line 9
    invoke-virtual {p0}, Lih9;->b()Lih9;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    check-cast p0, Lih9;

    .line 15
    .line 16
    const/4 v0, 0x5

    .line 17
    invoke-virtual {p0, v0}, Lih9;->h(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lum9;

    .line 22
    .line 23
    invoke-virtual {p0}, Lum9;->a()Lih9;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method
