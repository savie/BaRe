.class public Lv64$b;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lokhttp3/RequestBody;

.field public final b:Ljava/io/RandomAccessFile;

.field public final c:Lox0;

.field public final d:[B

.field public e:Ljava/lang/Long;

.field public f:Lokhttp3/MediaType;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public final i:Z


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;JLokhttp3/MediaType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 166
    iput-object p1, p0, Lv64$b;->b:Ljava/io/RandomAccessFile;

    .line 167
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, p4, p5, p6}, Lv64$b;->a(Ljava/lang/Long;Lokhttp3/MediaType;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 168
    :cond_0
    const-string p0, "valid length must be provided"

    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/Object;Lokhttp3/MediaType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lrg5;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lox0;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Lox0;

    .line 9
    .line 10
    iput-object p1, p0, Lv64$b;->c:Lox0;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1, p2, p3, p4}, Lv64$b;->a(Ljava/lang/Long;Lokhttp3/MediaType;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    instance-of p3, p1, Ljava/lang/CharSequence;

    .line 18
    .line 19
    const/4 p4, 0x0

    .line 20
    if-eqz p3, :cond_1

    .line 21
    .line 22
    check-cast p1, Ljava/lang/CharSequence;

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 29
    .line 30
    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :try_start_0
    new-instance p2, Lx91;

    .line 36
    .line 37
    new-instance p3, Lwc9;

    .line 38
    .line 39
    const/4 v0, 0x2

    .line 40
    invoke-direct {p3, v0}, Lwc9;-><init>(I)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lvq3;

    .line 44
    .line 45
    invoke-direct {v0, p4}, Lvq3;-><init>(I)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Lcz4;

    .line 49
    .line 50
    const/16 v2, 0xb

    .line 51
    .line 52
    invoke-direct {v1, v2}, Lcz4;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    new-instance v2, Lx44;

    .line 59
    .line 60
    invoke-direct {v2, v1, v0}, Lx44;-><init>(Lcz4;Lvq3;)V

    .line 61
    .line 62
    .line 63
    iput-object v2, p2, Lx91;->c:Ljava/lang/Object;

    .line 64
    .line 65
    new-instance v1, Lnh;

    .line 66
    .line 67
    const/16 v2, 0xf

    .line 68
    .line 69
    invoke-direct {v1, v2}, Lnh;-><init>(I)V

    .line 70
    .line 71
    .line 72
    new-instance v2, Ljava/lang/ThreadLocal;

    .line 73
    .line 74
    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v2, v1, Lnh;->b:Ljava/lang/Object;

    .line 78
    .line 79
    iput-object v1, p2, Lx91;->a:Ljava/lang/Object;

    .line 80
    .line 81
    iput-object p3, p2, Lx91;->b:Ljava/lang/Object;

    .line 82
    .line 83
    iput-object v0, p2, Lx91;->d:Ljava/lang/Object;

    .line 84
    .line 85
    new-instance p3, Ljava/io/StringWriter;

    .line 86
    .line 87
    invoke-direct {p3}, Ljava/io/StringWriter;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, p1, p3}, Lx91;->i(Ljava/lang/Object;Ljava/io/StringWriter;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    sget-object p2, Lv64;->b:Lokhttp3/MediaType;

    .line 104
    .line 105
    :goto_0
    array-length p3, p1

    .line 106
    new-instance v0, Ly51$g;

    .line 107
    .line 108
    invoke-direct {v0}, Ly51$g;-><init>()V

    .line 109
    .line 110
    .line 111
    iget-object v0, v0, Ly51$g;->a:Ljava/security/MessageDigest;

    .line 112
    .line 113
    invoke-virtual {v0, p1, p4, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    invoke-static {p3}, Ly51;->b([B)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    array-length v0, p1

    .line 125
    new-instance v1, Ly51$e;

    .line 126
    .line 127
    invoke-direct {v1}, Ly51$e;-><init>()V

    .line 128
    .line 129
    .line 130
    iget-object v1, v1, Ly51$e;->a:Ljava/security/MessageDigest;

    .line 131
    .line 132
    invoke-virtual {v1, p1, p4, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    .line 136
    .line 137
    .line 138
    move-result-object p4

    .line 139
    invoke-static {p4}, Ly51;->a([B)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p4

    .line 143
    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lv64$b;->i:Z

    .line 145
    .line 146
    iput-object p1, p0, Lv64$b;->d:[B

    .line 147
    .line 148
    array-length p1, p1

    .line 149
    int-to-long v0, p1

    .line 150
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p0, p1, p2, p3, p4}, Lv64$b;->a(Ljava/lang/Long;Lokhttp3/MediaType;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :catch_0
    move-exception p0

    .line 159
    new-instance p1, Lcy8;

    .line 160
    .line 161
    invoke-direct {p1, p0}, Lcy8;-><init>(Ljava/lang/Exception;)V

    .line 162
    .line 163
    .line 164
    throw p1
.end method

.method public constructor <init>(Lokhttp3/RequestBody;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lv64$b;->a:Lokhttp3/RequestBody;

    .line 175
    invoke-virtual {p1}, Lokhttp3/RequestBody;->b()Lokhttp3/MediaType;

    move-result-object p1

    iput-object p1, p0, Lv64$b;->f:Lokhttp3/MediaType;

    return-void
.end method

.method public constructor <init>([BILokhttp3/MediaType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p2, :cond_0

    .line 170
    iput-object p1, p0, Lv64$b;->d:[B

    int-to-long p1, p2

    .line 171
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4, p5}, Lv64$b;->a(Ljava/lang/Long;Lokhttp3/MediaType;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 172
    :cond_0
    const-string p0, "valid length must be provided"

    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/Long;Lokhttp3/MediaType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv64$b;->e:Ljava/lang/Long;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    sget-object p2, Lv64;->a:Lokhttp3/MediaType;

    .line 6
    .line 7
    :cond_0
    iput-object p2, p0, Lv64$b;->f:Lokhttp3/MediaType;

    .line 8
    .line 9
    iput-object p3, p0, Lv64$b;->g:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p4, p0, Lv64$b;->h:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lv64$b;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/String;

    .line 6
    .line 7
    iget-object p0, p0, Lv64$b;->d:[B

    .line 8
    .line 9
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    const-string p0, "<<<BYTE>>>"

    .line 16
    .line 17
    return-object p0
.end method
