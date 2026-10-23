.class public final enum Lf78;
.super Le88;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "CommentEnd"

    .line 2
    .line 3
    const/16 v1, 0x30

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Lo58;Le51;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lo58;->n:Lx48;

    .line 2
    .line 3
    invoke-virtual {p2}, Le51;->d()C

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    sget-object v1, Le88;->l0:Ld78;

    .line 8
    .line 9
    const-string v2, "--"

    .line 10
    .line 11
    if-eqz p2, :cond_4

    .line 12
    .line 13
    const/16 v3, 0x21

    .line 14
    .line 15
    if-eq p2, v3, :cond_3

    .line 16
    .line 17
    const/16 v3, 0x2d

    .line 18
    .line 19
    if-eq p2, v3, :cond_2

    .line 20
    .line 21
    const/16 v3, 0x3e

    .line 22
    .line 23
    sget-object v4, Le88;->a:Lz58;

    .line 24
    .line 25
    if-eq p2, v3, :cond_1

    .line 26
    .line 27
    const v3, 0xffff

    .line 28
    .line 29
    .line 30
    if-eq p2, v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Lo58;->m(Le88;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, v0, Lx48;->c:Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iput-object v1, p1, Lo58;->c:Le88;

    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    invoke-virtual {p1, p0}, Lo58;->l(Le88;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lo58;->i()V

    .line 50
    .line 51
    .line 52
    iput-object v4, p1, Lo58;->c:Le88;

    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    invoke-virtual {p1}, Lo58;->i()V

    .line 56
    .line 57
    .line 58
    iput-object v4, p1, Lo58;->c:Le88;

    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    invoke-virtual {p1, p0}, Lo58;->m(Le88;)V

    .line 62
    .line 63
    .line 64
    iget-object p0, v0, Lx48;->c:Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    invoke-virtual {p1, p0}, Lo58;->m(Le88;)V

    .line 71
    .line 72
    .line 73
    sget-object p0, Le88;->o0:Lh78;

    .line 74
    .line 75
    iput-object p0, p1, Lo58;->c:Le88;

    .line 76
    .line 77
    return-void

    .line 78
    :cond_4
    invoke-virtual {p1, p0}, Lo58;->m(Le88;)V

    .line 79
    .line 80
    .line 81
    iget-object p0, v0, Lx48;->c:Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const p2, 0xfffd

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iput-object v1, p1, Lo58;->c:Le88;

    .line 93
    .line 94
    return-void
.end method
