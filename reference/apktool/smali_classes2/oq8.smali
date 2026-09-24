.class public final Loq8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final i:Loq8;

.field public static final j:Loq8;

.field public static final k:Loq8;

.field public static final l:Ljava/util/List;

.field public static final m:Ljava/util/ArrayList;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Loq8;

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    const/16 v8, 0xf0

    .line 5
    .line 6
    const-string v1, "any_webdav_server"

    .line 7
    .line 8
    const-string v2, "Any WebDAV server"

    .line 9
    .line 10
    const v3, 0x7f08020f

    .line 11
    .line 12
    .line 13
    const-string v4, "https://www.rfc-editor.org/rfc/rfc4918"

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    invoke-direct/range {v0 .. v8}, Loq8;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Loq8;->i:Loq8;

    .line 21
    .line 22
    new-instance v1, Loq8;

    .line 23
    .line 24
    const/4 v8, 0x0

    .line 25
    const/16 v9, 0xb0

    .line 26
    .line 27
    const-string v2, "nextcloud"

    .line 28
    .line 29
    const-string v3, "Nextcloud"

    .line 30
    .line 31
    const v4, 0x7f0800de

    .line 32
    .line 33
    .line 34
    const-string v5, "https://docs.nextcloud.com/server/latest/user_manual/en/files/access_webdav.html"

    .line 35
    .line 36
    const-string v7, "remote.php/dav/files/<username>"

    .line 37
    .line 38
    invoke-direct/range {v1 .. v9}, Loq8;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 39
    .line 40
    .line 41
    sput-object v1, Loq8;->j:Loq8;

    .line 42
    .line 43
    new-instance v2, Loq8;

    .line 44
    .line 45
    const/4 v9, 0x0

    .line 46
    const/16 v10, 0xb0

    .line 47
    .line 48
    const-string v3, "owncloud"

    .line 49
    .line 50
    const-string v4, "ownCloud"

    .line 51
    .line 52
    const v5, 0x7f0800e1

    .line 53
    .line 54
    .line 55
    const-string v6, "https://doc.owncloud.com/server/next/classic_ui/files/access_webdav.html"

    .line 56
    .line 57
    const/4 v7, 0x0

    .line 58
    const-string v8, "remote.php/dav/files/<username>"

    .line 59
    .line 60
    invoke-direct/range {v2 .. v10}, Loq8;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 61
    .line 62
    .line 63
    sput-object v2, Loq8;->k:Loq8;

    .line 64
    .line 65
    new-instance v3, Loq8;

    .line 66
    .line 67
    const/4 v10, 0x0

    .line 68
    const/16 v11, 0xf0

    .line 69
    .line 70
    const-string v4, "synology_nas"

    .line 71
    .line 72
    const-string v5, "Synology"

    .line 73
    .line 74
    const v6, 0x7f0800e9

    .line 75
    .line 76
    .line 77
    const-string v7, "https://www.synology.com/dsm/packages/WebDAVServer"

    .line 78
    .line 79
    const/4 v8, 0x0

    .line 80
    invoke-direct/range {v3 .. v11}, Loq8;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 81
    .line 82
    .line 83
    new-instance v4, Loq8;

    .line 84
    .line 85
    const/4 v11, 0x0

    .line 86
    const/16 v12, 0xf0

    .line 87
    .line 88
    const-string v5, "wd_my_cloud"

    .line 89
    .line 90
    const-string v6, "WD My Cloud"

    .line 91
    .line 92
    const v7, 0x7f0800ec

    .line 93
    .line 94
    .line 95
    const-string v8, "https://support-en.wd.com/app/answers/detail/a_id/13537"

    .line 96
    .line 97
    invoke-direct/range {v4 .. v12}, Loq8;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 98
    .line 99
    .line 100
    new-instance v5, Loq8;

    .line 101
    .line 102
    new-instance v6, Lai6;

    .line 103
    .line 104
    const-string v7, "app\\.koofr\\.net"

    .line 105
    .line 106
    invoke-direct {v6, v7}, Lai6;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v6}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v12

    .line 113
    const/16 v13, 0x40

    .line 114
    .line 115
    const-string v6, "koofr"

    .line 116
    .line 117
    const-string v7, "Koofr"

    .line 118
    .line 119
    const v8, 0x7f0800db

    .line 120
    .line 121
    .line 122
    const-string v9, "https://koofr.eu/help/koofr_with_webdav/how-to-mount-koofr-webdav-share-on-linux-without-GUI/"

    .line 123
    .line 124
    const-string v10, "app.koofr.net"

    .line 125
    .line 126
    invoke-direct/range {v5 .. v13}, Loq8;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 127
    .line 128
    .line 129
    new-instance v6, Loq8;

    .line 130
    .line 131
    const/4 v13, 0x0

    .line 132
    const/16 v14, 0xb0

    .line 133
    .line 134
    const-string v7, "seafile"

    .line 135
    .line 136
    const-string v8, "Seafile"

    .line 137
    .line 138
    const v9, 0x7f0800e5

    .line 139
    .line 140
    .line 141
    const-string v10, "https://manual.seafile.com/latest/extension/webdav/"

    .line 142
    .line 143
    const-string v12, "seafdav/"

    .line 144
    .line 145
    invoke-direct/range {v6 .. v14}, Loq8;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 146
    .line 147
    .line 148
    new-instance v7, Loq8;

    .line 149
    .line 150
    new-instance v8, Lai6;

    .line 151
    .line 152
    const-string v9, "webdav\\.hidrive\\.strato\\.com"

    .line 153
    .line 154
    invoke-direct {v8, v9}, Lai6;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    new-instance v9, Lai6;

    .line 158
    .line 159
    const-string v10, "[^.]+\\.webdav\\.hidrive\\.strato\\.com"

    .line 160
    .line 161
    invoke-direct {v9, v10}, Lai6;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    filled-new-array {v8, v9}, [Lai6;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    invoke-static {v8}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v14

    .line 172
    const/16 v15, 0x60

    .line 173
    .line 174
    const-string v8, "hidrive"

    .line 175
    .line 176
    const-string v9, "HiDrive"

    .line 177
    .line 178
    const v10, 0x7f0800d9

    .line 179
    .line 180
    .line 181
    const-string v11, "https://www.strato.de/faq/cloud-speicher/ueber-welche-protokolle-kann-ich-mich-mit-hidrive-verbinden/"

    .line 182
    .line 183
    const-string v12, "webdav.hidrive.strato.com"

    .line 184
    .line 185
    invoke-direct/range {v7 .. v15}, Loq8;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 186
    .line 187
    .line 188
    filled-new-array/range {v1 .. v7}, [Loq8;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-static {v1}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    sput-object v1, Loq8;->l:Ljava/util/List;

    .line 197
    .line 198
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-static {v0, v1}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    sput-object v0, Loq8;->m:Ljava/util/ArrayList;

    .line 207
    .line 208
    new-instance v0, Ljava/util/ArrayList;

    .line 209
    .line 210
    const/16 v2, 0xa

    .line 211
    .line 212
    invoke-static {v1, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 217
    .line 218
    .line 219
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-eqz v2, :cond_0

    .line 228
    .line 229
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    check-cast v2, Loq8;

    .line 234
    .line 235
    iget v2, v2, Loq8;->c:I

    .line 236
    .line 237
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    goto :goto_0

    .line 245
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .locals 3

    .line 1
    and-int/lit8 v0, p8, 0x10

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p5, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p8, 0x20

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    move-object v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const-string v0, "dav/Koofr"

    .line 14
    .line 15
    :goto_0
    and-int/lit8 v2, p8, 0x40

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    move-object p6, v1

    .line 20
    :cond_2
    and-int/lit16 p8, p8, 0x80

    .line 21
    .line 22
    if-eqz p8, :cond_3

    .line 23
    .line 24
    sget-object p7, Lov2;->a:Lov2;

    .line 25
    .line 26
    :cond_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Loq8;->a:Ljava/lang/String;

    .line 30
    .line 31
    iput-object p2, p0, Loq8;->b:Ljava/lang/String;

    .line 32
    .line 33
    iput p3, p0, Loq8;->c:I

    .line 34
    .line 35
    iput-object p4, p0, Loq8;->d:Ljava/lang/String;

    .line 36
    .line 37
    iput-object p5, p0, Loq8;->e:Ljava/lang/String;

    .line 38
    .line 39
    iput-object v0, p0, Loq8;->f:Ljava/lang/String;

    .line 40
    .line 41
    iput-object p6, p0, Loq8;->g:Ljava/lang/String;

    .line 42
    .line 43
    iput-object p7, p0, Loq8;->h:Ljava/util/List;

    .line 44
    .line 45
    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lnq8;
    .locals 12

    .line 1
    invoke-static {p1}, Loq8;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Loq8;->f:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Lnq8;

    .line 11
    .line 12
    invoke-direct {p1, v1, v1}, Lnq8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :cond_0
    const-string v2, "https://"

    .line 18
    .line 19
    invoke-static {p1, v2}, Lnq7;->q0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v2, "http://"

    .line 24
    .line 25
    invoke-static {p1, v2}, Lnq7;->q0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v2, "/"

    .line 30
    .line 31
    invoke-static {p1, v2, p1}, Lnq7;->C0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string v4, ""

    .line 36
    .line 37
    invoke-static {p1, v2, v4}, Lnq7;->z0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-static {v4}, Loq8;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const-string v5, ":"

    .line 46
    .line 47
    invoke-static {v3, v5, v3}, Lnq7;->C0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 52
    .line 53
    invoke-static {v6, v5, v6}, Ldj7;->q(Ljava/util/Locale;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-static {v0}, Loq8;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    const/4 v7, 0x0

    .line 62
    const/4 v8, 0x1

    .line 63
    if-eqz v6, :cond_1

    .line 64
    .line 65
    move v6, v8

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    move v6, v7

    .line 68
    :goto_0
    if-eqz v4, :cond_8

    .line 69
    .line 70
    invoke-virtual {p0, v5}, Loq8;->b(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-nez v5, :cond_2

    .line 75
    .line 76
    if-eqz v6, :cond_8

    .line 77
    .line 78
    :cond_2
    new-array v5, v8, [C

    .line 79
    .line 80
    const/16 v6, 0x2f

    .line 81
    .line 82
    aput-char v6, v5, v7

    .line 83
    .line 84
    invoke-static {v4, v5}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-static {p2}, Loq8;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    if-eqz v9, :cond_3

    .line 93
    .line 94
    new-array v10, v8, [C

    .line 95
    .line 96
    aput-char v6, v10, v7

    .line 97
    .line 98
    invoke-static {v9, v10}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    goto :goto_1

    .line 103
    :cond_3
    move-object v9, v1

    .line 104
    :goto_1
    invoke-static {v0}, Loq8;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v10

    .line 108
    if-eqz v10, :cond_4

    .line 109
    .line 110
    new-array v11, v8, [C

    .line 111
    .line 112
    aput-char v6, v11, v7

    .line 113
    .line 114
    invoke-static {v10, v11}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    goto :goto_2

    .line 119
    :cond_4
    move-object v6, v1

    .line 120
    :goto_2
    if-eqz v6, :cond_6

    .line 121
    .line 122
    invoke-static {v5, v6}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    if-nez v9, :cond_5

    .line 127
    .line 128
    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-static {v5, v2, v7}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_7

    .line 137
    .line 138
    :cond_5
    move v7, v8

    .line 139
    goto :goto_3

    .line 140
    :cond_6
    if-eqz v9, :cond_7

    .line 141
    .line 142
    invoke-static {v5, v9}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    :cond_7
    :goto_3
    if-eqz v7, :cond_8

    .line 147
    .line 148
    new-instance p1, Lnq8;

    .line 149
    .line 150
    invoke-direct {p1, v3, v4}, Lnq8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_8
    new-instance v2, Lnq8;

    .line 155
    .line 156
    invoke-direct {v2, p1, v1}, Lnq8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    move-object p1, v2

    .line 160
    :goto_4
    new-instance v1, Lnq8;

    .line 161
    .line 162
    iget-object v2, p1, Lnq8;->a:Ljava/lang/String;

    .line 163
    .line 164
    invoke-static {v2}, Loq8;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    if-nez v2, :cond_9

    .line 169
    .line 170
    iget-object v2, p0, Loq8;->e:Ljava/lang/String;

    .line 171
    .line 172
    :cond_9
    invoke-static {p2}, Loq8;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    if-nez p0, :cond_a

    .line 177
    .line 178
    iget-object p0, p1, Lnq8;->b:Ljava/lang/String;

    .line 179
    .line 180
    invoke-static {p0}, Loq8;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    if-nez p0, :cond_a

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_a
    move-object v0, p0

    .line 188
    :goto_5
    invoke-direct {v1, v2, v0}, Lnq8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    return-object v1
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-static {p1}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object p1, v0

    .line 22
    :goto_0
    if-nez p1, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const-string v0, "https://"

    .line 26
    .line 27
    invoke-static {p1, v0}, Lnq7;->q0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "http://"

    .line 32
    .line 33
    invoke-static {p1, v0}, Lnq7;->q0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v0, "/"

    .line 38
    .line 39
    invoke-static {p1, v0, p1}, Lnq7;->C0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v0, ":"

    .line 44
    .line 45
    invoke-static {p1, v0, p1}, Lnq7;->C0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 50
    .line 51
    invoke-static {v0, p1, v0}, Ldj7;->q(Ljava/util/Locale;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 56
    .line 57
    iget-object p0, p0, Loq8;->h:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_5

    .line 75
    .line 76
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Lai6;

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lai6;->b(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_4

    .line 87
    .line 88
    const/4 p0, 0x1

    .line 89
    return p0

    .line 90
    :cond_5
    :goto_2
    const/4 p0, 0x0

    .line 91
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Loq8;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Loq8;

    .line 10
    .line 11
    iget-object v0, p0, Loq8;->a:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p1, Loq8;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Loq8;->b:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, p1, Loq8;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    iget v0, p0, Loq8;->c:I

    .line 34
    .line 35
    iget v1, p1, Loq8;->c:I

    .line 36
    .line 37
    if-eq v0, v1, :cond_4

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    iget-object v0, p0, Loq8;->d:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v1, p1, Loq8;->d:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_5

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_5
    iget-object v0, p0, Loq8;->e:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v1, p1, Loq8;->e:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_6

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_6
    iget-object v0, p0, Loq8;->f:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v1, p1, Loq8;->f:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_7

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_7
    iget-object v0, p0, Loq8;->g:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v1, p1, Loq8;->g:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_8

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_8
    iget-object p0, p0, Loq8;->h:Ljava/util/List;

    .line 85
    .line 86
    iget-object p1, p1, Loq8;->h:Ljava/util/List;

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-nez p0, :cond_9

    .line 93
    .line 94
    :goto_0
    const/4 p0, 0x0

    .line 95
    return p0

    .line 96
    :cond_9
    :goto_1
    const/4 p0, 0x1

    .line 97
    return p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Loq8;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Loq8;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Loq8;->c:I

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Loq8;->d:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v2, 0x0

    .line 29
    iget-object v3, p0, Loq8;->e:Ljava/lang/String;

    .line 30
    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    move v3, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    :goto_0
    add-int/2addr v0, v3

    .line 40
    mul-int/2addr v0, v1

    .line 41
    iget-object v3, p0, Loq8;->f:Ljava/lang/String;

    .line 42
    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    move v3, v2

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    :goto_1
    add-int/2addr v0, v3

    .line 52
    mul-int/2addr v0, v1

    .line 53
    iget-object v3, p0, Loq8;->g:Ljava/lang/String;

    .line 54
    .line 55
    if-nez v3, :cond_2

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    :goto_2
    add-int/2addr v0, v2

    .line 63
    mul-int/2addr v0, v1

    .line 64
    iget-object p0, p0, Loq8;->h:Ljava/util/List;

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    add-int/2addr p0, v0

    .line 71
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Loq8;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
