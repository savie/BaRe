.class public abstract Lme9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lmz9;

.field public static final b:Lmz9;

.field public static final c:Lmz9;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-static {v0}, Lme9;->a(I)Lmz9;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sput-object v1, Lme9;->a:Lmz9;

    .line 8
    .line 9
    const/16 v1, 0x20

    .line 10
    .line 11
    invoke-static {v1}, Lme9;->a(I)Lmz9;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sput-object v2, Lme9;->b:Lmz9;

    .line 16
    .line 17
    invoke-static {v0}, Lme9;->c(I)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lme9;->c(I)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v0}, Lme9;->b(II)Lmz9;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lme9;->c:Lmz9;

    .line 28
    .line 29
    invoke-static {v1, v1}, Lme9;->b(II)Lmz9;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lmz9;->t()Llz9;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget-object v1, Lzg9;->a:Lkt9;

    .line 37
    .line 38
    const-string v1, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Llz9;->f(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object v1, Lr0a;->c:Lr0a;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Llz9;->e(Lr0a;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lmz9;

    .line 53
    .line 54
    invoke-static {}, Lmz9;->t()Llz9;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sget-object v2, Lak9;->a:Lkt9;

    .line 59
    .line 60
    const-string v2, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Llz9;->f(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Llz9;->e(Lr0a;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lmz9;

    .line 73
    .line 74
    return-void
.end method

.method public static a(I)Lmz9;
    .locals 2

    .line 1
    invoke-static {}, Low9;->x()Lnw9;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lj79;->c()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lj79;->b:Lk79;

    .line 9
    .line 10
    check-cast v1, Low9;

    .line 11
    .line 12
    invoke-static {v1, p0}, Low9;->v(Low9;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Low9;

    .line 20
    .line 21
    invoke-static {}, Lmz9;->t()Llz9;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lo69;->b()Lx69;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0, p0}, Llz9;->h(Lt69;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Ldg9;->a:Lkt9;

    .line 33
    .line 34
    const-string p0, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Llz9;->f(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object p0, Lr0a;->c:Lr0a;

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Llz9;->e(Lr0a;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Lmz9;

    .line 49
    .line 50
    return-object p0
.end method

.method public static b(II)Lmz9;
    .locals 4

    .line 1
    invoke-static {}, Lwv9;->w()Lvv9;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lzv9;->v()Lyv9;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lj79;->c()V

    .line 10
    .line 11
    .line 12
    iget-object v2, v1, Lj79;->b:Lk79;

    .line 13
    .line 14
    check-cast v2, Lzv9;

    .line 15
    .line 16
    const/16 v3, 0x10

    .line 17
    .line 18
    invoke-static {v2, v3}, Lzv9;->u(Lzv9;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lj79;->b()Lk79;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lzv9;

    .line 26
    .line 27
    invoke-virtual {v0}, Lj79;->c()V

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Lj79;->b:Lk79;

    .line 31
    .line 32
    check-cast v2, Lwv9;

    .line 33
    .line 34
    invoke-static {v2, v1}, Lwv9;->v(Lwv9;Lzv9;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lj79;->c()V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lj79;->b:Lk79;

    .line 41
    .line 42
    check-cast v1, Lwv9;

    .line 43
    .line 44
    invoke-static {v1, p0}, Lwv9;->u(Lwv9;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Lwv9;

    .line 52
    .line 53
    invoke-static {}, Lmy9;->y()Lly9;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {}, Lpy9;->x()Loy9;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lj79;->c()V

    .line 62
    .line 63
    .line 64
    iget-object v2, v1, Lj79;->b:Lk79;

    .line 65
    .line 66
    check-cast v2, Lpy9;

    .line 67
    .line 68
    sget-object v3, Ljy9;->e:Ljy9;

    .line 69
    .line 70
    invoke-static {v2, v3}, Lpy9;->v(Lpy9;Ljy9;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Lj79;->c()V

    .line 74
    .line 75
    .line 76
    iget-object v2, v1, Lj79;->b:Lk79;

    .line 77
    .line 78
    check-cast v2, Lpy9;

    .line 79
    .line 80
    invoke-static {v2, p1}, Lpy9;->u(Lpy9;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Lj79;->b()Lk79;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Lpy9;

    .line 88
    .line 89
    invoke-virtual {v0}, Lj79;->c()V

    .line 90
    .line 91
    .line 92
    iget-object v1, v0, Lj79;->b:Lk79;

    .line 93
    .line 94
    check-cast v1, Lmy9;

    .line 95
    .line 96
    invoke-static {v1, p1}, Lmy9;->w(Lmy9;Lpy9;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Lj79;->c()V

    .line 100
    .line 101
    .line 102
    iget-object p1, v0, Lj79;->b:Lk79;

    .line 103
    .line 104
    check-cast p1, Lmy9;

    .line 105
    .line 106
    const/16 v1, 0x20

    .line 107
    .line 108
    invoke-static {p1, v1}, Lmy9;->v(Lmy9;I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Lmy9;

    .line 116
    .line 117
    invoke-static {}, Lov9;->t()Lnv9;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lj79;->c()V

    .line 122
    .line 123
    .line 124
    iget-object v1, v0, Lj79;->b:Lk79;

    .line 125
    .line 126
    check-cast v1, Lov9;

    .line 127
    .line 128
    invoke-static {v1, p0}, Lov9;->v(Lov9;Lwv9;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lj79;->c()V

    .line 132
    .line 133
    .line 134
    iget-object p0, v0, Lj79;->b:Lk79;

    .line 135
    .line 136
    check-cast p0, Lov9;

    .line 137
    .line 138
    invoke-static {p0, p1}, Lov9;->w(Lov9;Lmy9;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    check-cast p0, Lov9;

    .line 146
    .line 147
    invoke-static {}, Lmz9;->t()Llz9;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p0}, Lo69;->b()Lx69;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-virtual {p1, p0}, Llz9;->h(Lt69;)V

    .line 156
    .line 157
    .line 158
    sget-object p0, Lze9;->a:Lkt9;

    .line 159
    .line 160
    const-string p0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    .line 161
    .line 162
    invoke-virtual {p1, p0}, Llz9;->f(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    sget-object p0, Lr0a;->c:Lr0a;

    .line 166
    .line 167
    invoke-virtual {p1, p0}, Llz9;->e(Lr0a;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Lj79;->b()Lk79;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    check-cast p0, Lmz9;

    .line 175
    .line 176
    return-object p0
.end method

.method public static c(I)V
    .locals 3

    .line 1
    invoke-static {}, Lfw9;->x()Lew9;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lj79;->c()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lj79;->b:Lk79;

    .line 9
    .line 10
    check-cast v1, Lfw9;

    .line 11
    .line 12
    invoke-static {v1, p0}, Lfw9;->v(Lfw9;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Liw9;->v()Lhw9;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lj79;->c()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lj79;->b:Lk79;

    .line 23
    .line 24
    check-cast v1, Liw9;

    .line 25
    .line 26
    const/16 v2, 0x10

    .line 27
    .line 28
    invoke-static {v1, v2}, Liw9;->u(Liw9;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lj79;->b()Lk79;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Liw9;

    .line 36
    .line 37
    invoke-virtual {v0}, Lj79;->c()V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lj79;->b:Lk79;

    .line 41
    .line 42
    check-cast v1, Lfw9;

    .line 43
    .line 44
    invoke-static {v1, p0}, Lfw9;->w(Lfw9;Liw9;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Lfw9;

    .line 52
    .line 53
    invoke-static {}, Lmz9;->t()Llz9;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p0}, Lo69;->b()Lx69;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v0, p0}, Llz9;->h(Lt69;)V

    .line 62
    .line 63
    .line 64
    sget-object p0, Lpf9;->a:Lkt9;

    .line 65
    .line 66
    const-string p0, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    .line 67
    .line 68
    invoke-virtual {v0, p0}, Llz9;->f(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sget-object p0, Lr0a;->c:Lr0a;

    .line 72
    .line 73
    invoke-virtual {v0, p0}, Llz9;->e(Lr0a;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lj79;->b()Lk79;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    check-cast p0, Lmz9;

    .line 81
    .line 82
    return-void
.end method
