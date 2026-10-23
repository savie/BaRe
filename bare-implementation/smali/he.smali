.class public final Lhe;
.super Lmp0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final J:Ljp0;

.field public final K:Lod;

.field public L:Lem4;

.field public M:Lp65;


# direct methods
.method public constructor <init>(Lmp0;Ljp0;Lod;Lem4;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmp0;-><init>(Lmp0;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lhe;->K:Lod;

    .line 5
    .line 6
    iput-object p2, p0, Lhe;->J:Ljp0;

    .line 7
    .line 8
    iput-object p4, p0, Lhe;->L:Lem4;

    .line 9
    .line 10
    instance-of p1, p4, Lp65;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    check-cast p4, Lp65;

    .line 15
    .line 16
    iput-object p4, p0, Lhe;->M:Lp65;

    .line 17
    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method public final h(Lv77;)V
    .locals 1

    .line 1
    sget-object v0, Lu65;->H:Lu65;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ls65;->i(Lu65;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object p0, p0, Lhe;->K:Lod;

    .line 8
    .line 9
    invoke-virtual {p0}, Lod;->r0()Ljava/lang/reflect/Member;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-static {p0, p1}, Lu81;->d(Ljava/lang/reflect/Member;Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final k(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lhe;->K:Lod;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lod;->s0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lhe;->M:Lp65;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    check-cast p1, Ljava/util/Map;

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2, p3}, Lp65;->s(Ljava/util/Map;Lfk4;Lc87;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object p0, p0, Lhe;->L:Lem4;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lem4;->e(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :cond_2
    iget-object p0, p0, Lhe;->J:Ljp0;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljb9;->B()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v0, "Value returned by \'any-getter\' "

    .line 50
    .line 51
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p0, "() not java.util.Map but "

    .line 58
    .line 59
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p3, p0}, Lc87;->B(Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    const/4 p0, 0x0

    .line 73
    throw p0
.end method
