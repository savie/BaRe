.class public final synthetic Lq07;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Lz07;

.field public final synthetic b:Loz6;

.field public final synthetic c:Ls07;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:I

.field public final synthetic f:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lz07;Loz6;Ls07;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq07;->a:Lz07;

    .line 5
    .line 6
    iput-object p2, p0, Lq07;->b:Loz6;

    .line 7
    .line 8
    iput-object p3, p0, Lq07;->c:Ls07;

    .line 9
    .line 10
    iput-object p4, p0, Lq07;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput p5, p0, Lq07;->e:I

    .line 13
    .line 14
    iput-object p6, p0, Lq07;->f:[Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Lq07;->a:Lz07;

    .line 11
    .line 12
    iget-object v3, v2, Lz07;->e:Lh07;

    .line 13
    .line 14
    sget-object v5, Li07;->Extract:Li07;

    .line 15
    .line 16
    sget-object v6, Ll07;->Extraction:Ll07;

    .line 17
    .line 18
    move-object v4, v5

    .line 19
    move-object v5, v6

    .line 20
    sget-object v6, Lm07;->Started:Lm07;

    .line 21
    .line 22
    iget-object v12, v0, Lq07;->b:Loz6;

    .line 23
    .line 24
    iget-object v8, v12, Loz6;->a:Ljava/lang/String;

    .line 25
    .line 26
    iget-wide v13, v12, Loz6;->f:J

    .line 27
    .line 28
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v10

    .line 32
    const/16 v11, 0x10

    .line 33
    .line 34
    move-object v7, v8

    .line 35
    const-wide/16 v8, 0x0

    .line 36
    .line 37
    invoke-static/range {v3 .. v11}, Lx13;->l(Lh07;Li07;Ll07;Lm07;Ljava/lang/String;JLjava/lang/Long;I)V

    .line 38
    .line 39
    .line 40
    iget-object v3, v0, Lq07;->c:Ls07;

    .line 41
    .line 42
    iget-object v3, v3, Ls07;->e:Lcy0;

    .line 43
    .line 44
    sget-object v6, Loy6;->j:Loy6;

    .line 45
    .line 46
    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    iget-object v8, v0, Lq07;->d:Ljava/lang/String;

    .line 51
    .line 52
    iget v9, v0, Lq07;->e:I

    .line 53
    .line 54
    iget-object v0, v0, Lq07;->f:[Ljava/lang/String;

    .line 55
    .line 56
    if-eqz v6, :cond_0

    .line 57
    .line 58
    sget-object v3, Lcom/swiftapps/sba/SbaSwiftTarNative;->a:Lcom/swiftapps/sba/SbaSwiftTarNative;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 61
    .line 62
    .line 63
    move-result-object v15

    .line 64
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    iget-wide v10, v12, Loz6;->e:J

    .line 68
    .line 69
    invoke-virtual {v2, v13, v14, v7}, Lz07;->q(JLjava/lang/String;)Lvq;

    .line 70
    .line 71
    .line 72
    move-result-object v21

    .line 73
    move-object/from16 v20, v0

    .line 74
    .line 75
    move-object/from16 v18, v8

    .line 76
    .line 77
    move/from16 v19, v9

    .line 78
    .line 79
    move-wide/from16 v16, v10

    .line 80
    .line 81
    invoke-static/range {v15 .. v21}, Lcom/swiftapps/sba/SbaSwiftTarNative;->b(Ljava/io/FileDescriptor;JLjava/lang/String;I[Ljava/lang/String;Lvq;)[Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :goto_0
    move-object v6, v5

    .line 86
    move-object v5, v4

    .line 87
    goto :goto_1

    .line 88
    :cond_0
    move-object/from16 v20, v0

    .line 89
    .line 90
    move-object/from16 v18, v8

    .line 91
    .line 92
    move/from16 v19, v9

    .line 93
    .line 94
    instance-of v0, v3, Lpy6;

    .line 95
    .line 96
    if-eqz v0, :cond_1

    .line 97
    .line 98
    sget-object v0, Lcom/swiftapps/sba/SbaSwiftTarNative;->a:Lcom/swiftapps/sba/SbaSwiftTarNative;

    .line 99
    .line 100
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 101
    .line 102
    .line 103
    move-result-object v15

    .line 104
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    iget-wide v0, v12, Loz6;->e:J

    .line 108
    .line 109
    iget-wide v8, v12, Loz6;->f:J

    .line 110
    .line 111
    invoke-virtual {v2, v8, v9, v7}, Lz07;->q(JLjava/lang/String;)Lvq;

    .line 112
    .line 113
    .line 114
    move-result-object v23

    .line 115
    move-wide/from16 v16, v0

    .line 116
    .line 117
    move/from16 v21, v19

    .line 118
    .line 119
    move-object/from16 v22, v20

    .line 120
    .line 121
    move-object/from16 v20, v18

    .line 122
    .line 123
    move-wide/from16 v18, v8

    .line 124
    .line 125
    invoke-static/range {v15 .. v23}, Lcom/swiftapps/sba/SbaSwiftTarNative;->c(Ljava/io/FileDescriptor;JJLjava/lang/String;I[Ljava/lang/String;Lvq;)[Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    goto :goto_0

    .line 130
    :goto_1
    iget-object v4, v2, Lz07;->e:Lh07;

    .line 131
    .line 132
    move-object v8, v7

    .line 133
    sget-object v7, Lm07;->Progress:Lm07;

    .line 134
    .line 135
    iget-wide v9, v12, Loz6;->f:J

    .line 136
    .line 137
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 138
    .line 139
    .line 140
    move-result-object v11

    .line 141
    invoke-static/range {v4 .. v11}, Lx13;->k(Lh07;Li07;Ll07;Lm07;Ljava/lang/String;JLjava/lang/Long;)V

    .line 142
    .line 143
    .line 144
    move-object v4, v5

    .line 145
    move-object v5, v6

    .line 146
    move-object v7, v8

    .line 147
    iget-object v1, v2, Lz07;->e:Lh07;

    .line 148
    .line 149
    sget-object v7, Lm07;->Completed:Lm07;

    .line 150
    .line 151
    iget-wide v9, v12, Loz6;->f:J

    .line 152
    .line 153
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 154
    .line 155
    .line 156
    move-result-object v11

    .line 157
    move-object v5, v4

    .line 158
    move-object v4, v1

    .line 159
    invoke-static/range {v4 .. v11}, Lx13;->k(Lh07;Li07;Ll07;Lm07;Ljava/lang/String;JLjava/lang/Long;)V

    .line 160
    .line 161
    .line 162
    return-object v0

    .line 163
    :cond_1
    invoke-static {}, Lq;->j()V

    .line 164
    .line 165
    .line 166
    const/4 v0, 0x0

    .line 167
    return-object v0
.end method
