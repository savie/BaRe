.class public Lorg/swiftapps/swiftbackup/messagescalls/defaulthandler/SmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "SmsReceiver"

    .line 5
    .line 6
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/messagescalls/defaulthandler/SmsReceiver;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v1, "Intent recieved: "

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/defaulthandler/SmsReceiver;->a:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_7

    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :cond_0
    invoke-static {p2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    if-nez p2, :cond_1

    .line 50
    .line 51
    const-string p1, "onReceive: null SmsMessage[]"

    .line 52
    .line 53
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    array-length v0, p2

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v2, "onReceive: Messsages received, length = "

    .line 61
    .line 62
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    const/4 p0, 0x0

    .line 76
    aget-object p2, p2, p0

    .line 77
    .line 78
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    new-instance v0, Landroid/content/ContentValues;

    .line 83
    .line 84
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const-string v2, "address"

    .line 92
    .line 93
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    new-instance v1, Ljava/util/GregorianCalendar;

    .line 97
    .line 98
    const/16 v3, 0x8

    .line 99
    .line 100
    const/16 v4, 0x12

    .line 101
    .line 102
    const/16 v5, 0x7db

    .line 103
    .line 104
    invoke-direct {v1, v5, v3, v4}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 105
    .line 106
    .line 107
    new-instance v3, Ljava/util/GregorianCalendar;

    .line 108
    .line 109
    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 113
    .line 114
    .line 115
    move-result-wide v4

    .line 116
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_2

    .line 124
    .line 125
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    .line 126
    .line 127
    .line 128
    move-result-wide v4

    .line 129
    :cond_2
    const-string v1, "date"

    .line 130
    .line 131
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    .line 139
    .line 140
    .line 141
    move-result-wide v3

    .line 142
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    const-string v3, "date_sent"

    .line 147
    .line 148
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    const-string v3, "protocol"

    .line 160
    .line 161
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    .line 163
    .line 164
    const-string v1, "read"

    .line 165
    .line 166
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    .line 168
    .line 169
    const-string v1, "seen"

    .line 170
    .line 171
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 182
    .line 183
    .line 184
    move-result p0

    .line 185
    if-lez p0, :cond_3

    .line 186
    .line 187
    const-string p0, "subject"

    .line 188
    .line 189
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    :cond_3
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    .line 197
    .line 198
    .line 199
    move-result p0

    .line 200
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    const-string v1, "reply_path_present"

    .line 205
    .line 206
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    .line 208
    .line 209
    const-string p0, "service_center"

    .line 210
    .line 211
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    if-eqz p0, :cond_5

    .line 223
    .line 224
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    if-nez p2, :cond_4

    .line 229
    .line 230
    goto :goto_0

    .line 231
    :cond_4
    const/16 p2, 0xc

    .line 232
    .line 233
    const/16 v1, 0xa

    .line 234
    .line 235
    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_5
    :goto_0
    const-string p0, ""

    .line 244
    .line 245
    :goto_1
    const-string p2, "body"

    .line 246
    .line 247
    invoke-virtual {v0, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    const-string p0, "thread_id"

    .line 251
    .line 252
    invoke-virtual {v0, p0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    if-eqz p0, :cond_6

    .line 260
    .line 261
    const-wide/16 v1, 0x0

    .line 262
    .line 263
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 264
    .line 265
    .line 266
    move-result-wide v3

    .line 267
    cmp-long p0, v3, v1

    .line 268
    .line 269
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    sget-object p1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    .line 274
    .line 275
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 276
    .line 277
    .line 278
    :cond_7
    :goto_2
    return-void
.end method
