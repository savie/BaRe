.class public final Lbp0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;
.implements Lcz2;
.implements Lun5;


# static fields
.field public static d:Lbp0;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 36
    new-array v1, v0, [I

    .line 37
    iput-object v1, p0, Lbp0;->a:Ljava/lang/Object;

    .line 38
    new-array v1, v0, [I

    .line 39
    iput-object v1, p0, Lbp0;->b:Ljava/lang/Object;

    .line 40
    new-array v0, v0, [I

    .line 41
    iput-object v0, p0, Lbp0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lbp0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lbp0;->a:Ljava/lang/Object;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    new-instance v0, Lke;

    .line 16
    .line 17
    const/16 v1, 0xa

    .line 18
    .line 19
    invoke-direct {v0, p1, v1}, Lke;-><init>(Ljava/lang/Object;I)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lbp0;->b:Ljava/lang/Object;

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance p0, Lrm5;

    .line 26
    .line 27
    const-string p1, "NFC unavailable on this device"

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lrm5;-><init>(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lbp0;->a:Ljava/lang/Object;

    iput-object p2, p0, Lbp0;->b:Ljava/lang/Object;

    iput-object p3, p0, Lbp0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lbq4;Lvz0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lbp0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/nfc/NfcAdapter;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lbp0;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Lke;

    .line 18
    .line 19
    new-instance v2, Ll02;

    .line 20
    .line 21
    invoke-direct {v2, p3, p2, v0}, Ll02;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p2, v1, Lke;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p2, Landroid/nfc/NfcAdapter;

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Landroid/nfc/NfcAdapter;->disableReaderMode(Landroid/app/Activity;)V

    .line 29
    .line 30
    .line 31
    new-instance p2, Landroid/os/Bundle;

    .line 32
    .line 33
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string p3, "presence"

    .line 37
    .line 38
    const/16 v3, 0x32

    .line 39
    .line 40
    invoke-virtual {p2, p3, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    iget-object p3, v1, Lke;->b:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p3, Landroid/nfc/NfcAdapter;

    .line 46
    .line 47
    new-instance v1, Lsm5;

    .line 48
    .line 49
    invoke-direct {v1, v2}, Lsm5;-><init>(Ll02;)V

    .line 50
    .line 51
    .line 52
    const/4 v2, 0x3

    .line 53
    invoke-virtual {p3, p1, v1, v2, p2}, Landroid/nfc/NfcAdapter;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lbp0;->c:Ljava/lang/Object;

    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    new-instance p0, Lrm5;

    .line 60
    .line 61
    const-string p1, "Please activate NFC_TRANSPORT"

    .line 62
    .line 63
    const/4 p2, 0x1

    .line 64
    invoke-direct {p0, p1, p2}, Lrm5;-><init>(Ljava/lang/String;Z)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public b(ILet1;Lot1;)Z
    .locals 5

    .line 1
    iget-object p0, p0, Lbp0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lap0;

    .line 4
    .line 5
    iget-object v0, p3, Lot1;->p0:[I

    .line 6
    .line 7
    iget-object v1, p3, Lot1;->t:[I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aget v3, v0, v2

    .line 11
    .line 12
    iput v3, p0, Lap0;->a:I

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    aget v0, v0, v3

    .line 16
    .line 17
    iput v0, p0, Lap0;->b:I

    .line 18
    .line 19
    invoke-virtual {p3}, Lot1;->q()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lap0;->c:I

    .line 24
    .line 25
    invoke-virtual {p3}, Lot1;->k()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lap0;->d:I

    .line 30
    .line 31
    iput-boolean v2, p0, Lap0;->i:Z

    .line 32
    .line 33
    iput p1, p0, Lap0;->j:I

    .line 34
    .line 35
    iget p1, p0, Lap0;->a:I

    .line 36
    .line 37
    const/4 v0, 0x3

    .line 38
    if-ne p1, v0, :cond_0

    .line 39
    .line 40
    move p1, v3

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move p1, v2

    .line 43
    :goto_0
    iget v4, p0, Lap0;->b:I

    .line 44
    .line 45
    if-ne v4, v0, :cond_1

    .line 46
    .line 47
    move v0, v3

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v0, v2

    .line 50
    :goto_1
    const/4 v4, 0x0

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    iget p1, p3, Lot1;->W:F

    .line 54
    .line 55
    cmpl-float p1, p1, v4

    .line 56
    .line 57
    if-lez p1, :cond_2

    .line 58
    .line 59
    move p1, v3

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move p1, v2

    .line 62
    :goto_2
    if-eqz v0, :cond_3

    .line 63
    .line 64
    iget v0, p3, Lot1;->W:F

    .line 65
    .line 66
    cmpl-float v0, v0, v4

    .line 67
    .line 68
    if-lez v0, :cond_3

    .line 69
    .line 70
    move v0, v3

    .line 71
    goto :goto_3

    .line 72
    :cond_3
    move v0, v2

    .line 73
    :goto_3
    const/4 v4, 0x4

    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    aget p1, v1, v2

    .line 77
    .line 78
    if-ne p1, v4, :cond_4

    .line 79
    .line 80
    iput v3, p0, Lap0;->a:I

    .line 81
    .line 82
    :cond_4
    if-eqz v0, :cond_5

    .line 83
    .line 84
    aget p1, v1, v3

    .line 85
    .line 86
    if-ne p1, v4, :cond_5

    .line 87
    .line 88
    iput v3, p0, Lap0;->b:I

    .line 89
    .line 90
    :cond_5
    invoke-virtual {p2, p3, p0}, Let1;->b(Lot1;Lap0;)V

    .line 91
    .line 92
    .line 93
    iget p1, p0, Lap0;->e:I

    .line 94
    .line 95
    invoke-virtual {p3, p1}, Lot1;->O(I)V

    .line 96
    .line 97
    .line 98
    iget p1, p0, Lap0;->f:I

    .line 99
    .line 100
    invoke-virtual {p3, p1}, Lot1;->L(I)V

    .line 101
    .line 102
    .line 103
    iget-boolean p1, p0, Lap0;->h:Z

    .line 104
    .line 105
    iput-boolean p1, p3, Lot1;->E:Z

    .line 106
    .line 107
    iget p1, p0, Lap0;->g:I

    .line 108
    .line 109
    invoke-virtual {p3, p1}, Lot1;->I(I)V

    .line 110
    .line 111
    .line 112
    iput v2, p0, Lap0;->j:I

    .line 113
    .line 114
    iget-boolean p0, p0, Lap0;->i:Z

    .line 115
    .line 116
    return p0
.end method

.method public c(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lbp0;->e(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object p0, p0, Lbp0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lr4;

    .line 24
    .line 25
    invoke-virtual {v1, p1, p2}, Lr4;->d(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 30
    .line 31
    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    check-cast p2, Lr4;

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Lr4;->b(Landroid/widget/TextView;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    return-void
.end method

.method public d(Lpt1;III)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lot1;->b0:I

    .line 5
    .line 6
    iget v1, p1, Lot1;->c0:I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput v2, p1, Lot1;->b0:I

    .line 10
    .line 11
    iput v2, p1, Lot1;->c0:I

    .line 12
    .line 13
    invoke-virtual {p1, p3}, Lot1;->O(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p4}, Lot1;->L(I)V

    .line 17
    .line 18
    .line 19
    if-gez v0, :cond_0

    .line 20
    .line 21
    iput v2, p1, Lot1;->b0:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput v0, p1, Lot1;->b0:I

    .line 25
    .line 26
    :goto_0
    if-gez v1, :cond_1

    .line 27
    .line 28
    iput v2, p1, Lot1;->c0:I

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iput v1, p1, Lot1;->c0:I

    .line 32
    .line 33
    :goto_1
    iget-object p0, p0, Lbp0;->c:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Lpt1;

    .line 36
    .line 37
    iput p2, p0, Lpt1;->t0:I

    .line 38
    .line 39
    invoke-virtual {p0}, Lpt1;->U()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public e(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 10

    .line 1
    iget-object v0, p0, Lbp0;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lr4;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p0, Lbp0;->a:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Ll40;

    .line 28
    .line 29
    if-eqz p1, :cond_d

    .line 30
    .line 31
    new-instance v2, Lun2;

    .line 32
    .line 33
    iget-object v3, v1, Ll40;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v3, Ljava/util/ArrayList;

    .line 36
    .line 37
    iget-object v4, v1, Ll40;->d:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v4, Lfo8;

    .line 40
    .line 41
    iget-object v5, v1, Ll40;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v5, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v2, v3, v4, v5}, Lun2;-><init>(Ljava/util/ArrayList;Lfo8;Ljava/util/ArrayList;)V

    .line 46
    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    move v5, v3

    .line 54
    :goto_2
    const/4 v6, -0x1

    .line 55
    const/16 v7, 0xd

    .line 56
    .line 57
    const/16 v8, 0xa

    .line 58
    .line 59
    if-ge v5, v4, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    if-eq v9, v8, :cond_3

    .line 66
    .line 67
    if-eq v9, v7, :cond_3

    .line 68
    .line 69
    add-int/lit8 v5, v5, 0x1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    move v5, v6

    .line 73
    :cond_3
    if-eq v5, v6, :cond_4

    .line 74
    .line 75
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v2, v3}, Lun2;->i(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v3, v5, 0x1

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-ge v3, v4, :cond_1

    .line 89
    .line 90
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-ne v4, v7, :cond_1

    .line 95
    .line 96
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-ne v4, v8, :cond_1

    .line 101
    .line 102
    add-int/lit8 v5, v5, 0x2

    .line 103
    .line 104
    move v3, v5

    .line 105
    goto :goto_1

    .line 106
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-lez v4, :cond_6

    .line 111
    .line 112
    if-eqz v3, :cond_5

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-ge v3, v4, :cond_6

    .line 119
    .line 120
    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v2, v3}, Lun2;->i(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_6
    iget-object v3, v2, Lun2;->n:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v2, v3}, Lun2;->f(Ljava/util/List;)V

    .line 130
    .line 131
    .line 132
    new-instance v3, Lla;

    .line 133
    .line 134
    iget-object v4, v2, Lun2;->k:Ljava/util/List;

    .line 135
    .line 136
    iget-object v5, v2, Lun2;->m:Ljava/util/LinkedHashMap;

    .line 137
    .line 138
    invoke-direct {v3, v4, v5}, Lla;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    iget-object v4, v2, Lun2;->j:Lfo8;

    .line 142
    .line 143
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    new-instance v4, Lic4;

    .line 147
    .line 148
    invoke-direct {v4, v3}, Lic4;-><init>(Lla;)V

    .line 149
    .line 150
    .line 151
    iget-object v3, v2, Lun2;->o:Ljava/util/LinkedHashSet;

    .line 152
    .line 153
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    if-eqz v5, :cond_7

    .line 162
    .line 163
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    check-cast v5, Lg3;

    .line 168
    .line 169
    invoke-virtual {v5, v4}, Lg3;->g(Lic4;)V

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_7
    iget-object v2, v2, Lun2;->l:Lqn2;

    .line 174
    .line 175
    iget-object v2, v2, Lqn2;->a:Lpn2;

    .line 176
    .line 177
    iget-object v1, v1, Ll40;->e:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v1, Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-nez v3, :cond_c

    .line 190
    .line 191
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    if-eqz v3, :cond_8

    .line 200
    .line 201
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    check-cast v3, Lr4;

    .line 206
    .line 207
    invoke-virtual {v3}, Lr4;->c()V

    .line 208
    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_8
    iget-object p0, p0, Lbp0;->b:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast p0, Lc00;

    .line 214
    .line 215
    iget-object v1, p0, Lc00;->b:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v1, Lom5;

    .line 218
    .line 219
    iget-object p0, p0, Lc00;->c:Ljava/lang/Object;

    .line 220
    .line 221
    move-object v4, p0

    .line 222
    check-cast v4, Lj75;

    .line 223
    .line 224
    new-instance v5, Ldi4;

    .line 225
    .line 226
    const/4 p0, 0x1

    .line 227
    invoke-direct {v5, p0}, Ldi4;-><init>(I)V

    .line 228
    .line 229
    .line 230
    new-instance v8, Lns0;

    .line 231
    .line 232
    const/4 p0, 0x7

    .line 233
    invoke-direct {v8, p0}, Lns0;-><init>(I)V

    .line 234
    .line 235
    .line 236
    new-instance v3, Lbs2;

    .line 237
    .line 238
    new-instance v6, Lwj7;

    .line 239
    .line 240
    invoke-direct {v6}, Lwj7;-><init>()V

    .line 241
    .line 242
    .line 243
    iget-object p0, v1, Lom5;->a:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast p0, Ljava/util/HashMap;

    .line 246
    .line 247
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    invoke-direct/range {v3 .. v8}, Lbs2;-><init>(Lj75;Ldi4;Lwj7;Ljava/util/Map;Lns0;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3, v2}, Lbs2;->i(Lon5;)V

    .line 255
    .line 256
    .line 257
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-eqz v0, :cond_9

    .line 266
    .line 267
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    check-cast v0, Lr4;

    .line 272
    .line 273
    invoke-virtual {v0, v3}, Lr4;->a(Lbs2;)V

    .line 274
    .line 275
    .line 276
    goto :goto_5

    .line 277
    :cond_9
    iget-object p0, v3, Lbs2;->d:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast p0, Lwj7;

    .line 280
    .line 281
    new-instance v0, Luj7;

    .line 282
    .line 283
    iget-object v1, p0, Lwj7;->a:Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 286
    .line 287
    .line 288
    iget-object p0, p0, Lwj7;->b:Ljava/util/ArrayDeque;

    .line 289
    .line 290
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    if-eqz v1, :cond_a

    .line 299
    .line 300
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    check-cast v1, Ltj7;

    .line 305
    .line 306
    iget-object v2, v1, Ltj7;->a:Ljava/lang/Object;

    .line 307
    .line 308
    iget v3, v1, Ltj7;->b:I

    .line 309
    .line 310
    iget v4, v1, Ltj7;->c:I

    .line 311
    .line 312
    iget v1, v1, Ltj7;->d:I

    .line 313
    .line 314
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 315
    .line 316
    .line 317
    goto :goto_6

    .line 318
    :cond_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 319
    .line 320
    .line 321
    move-result p0

    .line 322
    if-eqz p0, :cond_b

    .line 323
    .line 324
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 325
    .line 326
    .line 327
    move-result p0

    .line 328
    if-nez p0, :cond_b

    .line 329
    .line 330
    new-instance p0, Landroid/text/SpannableStringBuilder;

    .line 331
    .line 332
    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 333
    .line 334
    .line 335
    return-object p0

    .line 336
    :cond_b
    return-object v0

    .line 337
    :cond_c
    invoke-static {v1}, Leq3;->h(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 338
    .line 339
    .line 340
    move-result-object p0

    .line 341
    throw p0

    .line 342
    :cond_d
    const-string p0, "input must not be null"

    .line 343
    .line 344
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    const/4 p0, 0x0

    .line 348
    return-object p0
.end method

.method public f(Lpt1;)V
    .locals 8

    .line 1
    iget-object p0, p0, Lbp0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lpt1;->q0:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :goto_0
    const/4 v3, 0x1

    .line 17
    if-ge v2, v0, :cond_2

    .line 18
    .line 19
    iget-object v4, p1, Lpt1;->q0:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lot1;

    .line 26
    .line 27
    iget-object v5, v4, Lot1;->p0:[I

    .line 28
    .line 29
    aget v6, v5, v1

    .line 30
    .line 31
    const/4 v7, 0x3

    .line 32
    if-eq v6, v7, :cond_0

    .line 33
    .line 34
    aget v3, v5, v3

    .line 35
    .line 36
    if-ne v3, v7, :cond_1

    .line 37
    .line 38
    :cond_0
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget-object p0, p1, Lpt1;->s0:Lmi2;

    .line 45
    .line 46
    iput-boolean v3, p0, Lmi2;->a:Z

    .line 47
    .line 48
    return-void
.end method

.method public getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lbp0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 4
    .line 5
    return-object p0
.end method

.method public h(Lnb4;Lhk5;Z)Lhk5;
    .locals 3

    .line 1
    iget-object v0, p0, Lbp0;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lqn5;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lbp0;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lib;

    .line 11
    .line 12
    invoke-virtual {v0}, Lib;->g()Lqn5;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    iget-object p0, p0, Lbp0;->a:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lyf1;

    .line 19
    .line 20
    iget-object v1, p0, Lyf1;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lvq;

    .line 23
    .line 24
    iget-object p0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Lgy5;

    .line 27
    .line 28
    iget-object v1, v1, Lvq;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Lnp1;

    .line 31
    .line 32
    invoke-virtual {v1, p0}, Lnp1;->g(Lgy5;)Lnp1;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    sget-object v1, Lgy5;->d:Lgy5;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lnp1;->k(Lgy5;)Lqn5;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x0

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    if-eqz v0, :cond_6

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lnp1;->e(Lqn5;)Lqn5;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :goto_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    :cond_2
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_6

    .line 61
    .line 62
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lhk5;

    .line 67
    .line 68
    if-eqz p3, :cond_3

    .line 69
    .line 70
    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    goto :goto_3

    .line 75
    :cond_3
    invoke-interface {p1, v0, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    :goto_3
    if-lez v1, :cond_2

    .line 80
    .line 81
    if-eqz v2, :cond_5

    .line 82
    .line 83
    if-eqz p3, :cond_4

    .line 84
    .line 85
    invoke-interface {p1, v2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    goto :goto_4

    .line 90
    :cond_4
    invoke-interface {p1, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    :goto_4
    if-gez v1, :cond_2

    .line 95
    .line 96
    :cond_5
    move-object v2, v0

    .line 97
    goto :goto_2

    .line 98
    :cond_6
    return-object v2
.end method

.method public next()Lbz2;
    .locals 5

    .line 1
    iget-object v0, p0, Lbp0;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lbz2;

    .line 4
    .line 5
    if-nez v0, :cond_6

    .line 6
    .line 7
    iget-object v0, p0, Lbp0;->a:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ltn5;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lorg/w3c/dom/Node;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    new-instance p0, Lvn2;

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object p0, p0, Lbp0;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p0, Lyn5;

    .line 32
    .line 33
    invoke-virtual {p0}, Lrk7;->c()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lorg/w3c/dom/Node;

    .line 38
    .line 39
    if-eq v2, v3, :cond_2

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Lrk7;->pop()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_1
    new-instance p0, Lvn2;

    .line 47
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/4 v2, 0x1

    .line 60
    if-ne v0, v2, :cond_5

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    new-instance p0, Lxn2;

    .line 66
    .line 67
    invoke-direct {p0, v1}, Lxn2;-><init>(Lorg/w3c/dom/Node;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    iget-object v0, p0, Lxn2;->a:Lorg/w3c/dom/Element;

    .line 77
    .line 78
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    const/4 v2, 0x0

    .line 87
    :goto_0
    if-ge v2, v1, :cond_4

    .line 88
    .line 89
    invoke-interface {v0, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    new-instance v4, Lwn2;

    .line 94
    .line 95
    invoke-direct {v4, v3}, Lwn2;-><init>(Lorg/w3c/dom/Node;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4}, Lwn2;->f()Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-nez v3, :cond_3

    .line 103
    .line 104
    invoke-virtual {p0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_4
    return-object p0

    .line 111
    :cond_5
    new-instance p0, Lyn2;

    .line 112
    .line 113
    invoke-direct {p0, v1}, Lyn2;-><init>(Lorg/w3c/dom/Node;)V

    .line 114
    .line 115
    .line 116
    return-object p0

    .line 117
    :cond_6
    const/4 v1, 0x0

    .line 118
    iput-object v1, p0, Lbp0;->c:Ljava/lang/Object;

    .line 119
    .line 120
    return-object v0
.end method

.method public peek()Lbz2;
    .locals 1

    .line 1
    iget-object v0, p0, Lbp0;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lbz2;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lbp0;->next()Lbz2;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lbp0;->c:Ljava/lang/Object;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lbp0;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lbz2;

    .line 16
    .line 17
    return-object p0
.end method
