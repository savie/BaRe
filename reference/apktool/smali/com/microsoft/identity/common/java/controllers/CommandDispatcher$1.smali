.class final Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$codeMarkerManager:Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;

.field final synthetic val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

.field final synthetic val$commandParameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

.field final synthetic val$correlationId:Ljava/lang/String;

.field final synthetic val$finalFuture:Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;Ljava/lang/String;Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/common/java/commands/BaseCommand;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$finalFuture:Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$correlationId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$codeMarkerManager:Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$commandParameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    const-string v0, "Request encountered an exception with correlation id : **"

    .line 2
    .line 3
    const-string v1, "CANCELLED_EXECUTION: Worker exception suppressed after cancellation. correlationId="

    .line 4
    .line 5
    const-string v2, "The command in the map has mutated "

    .line 6
    .line 7
    const-string v3, "The command in the map has mutated "

    .line 8
    .line 9
    const-string v4, "The command in the map has mutated "

    .line 10
    .line 11
    const-string v5, "Completed silent request as owner for correlation id : **"

    .line 12
    .line 13
    const-string v6, "The command in the map has mutated "

    .line 14
    .line 15
    const-string v7, "PRE_START_CANCELLATION: Worker skipped execution. correlationId="

    .line 16
    .line 17
    iget-object v8, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$finalFuture:Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    .line 18
    .line 19
    invoke-virtual {v8}, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;->getCancellationSignal()Lcom/microsoft/identity/common/java/net/CancellationSignal;

    .line 20
    .line 21
    .line 22
    move-result-object v8

    .line 23
    sget v9, Lcom/microsoft/identity/common/java/net/CancellationSignal;->a:I

    .line 24
    .line 25
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/microsoft/identity/common/java/net/CancellationSignal;->access$getSThreadLocalSignal$cp()Ljava/lang/ThreadLocal;

    .line 29
    .line 30
    .line 31
    move-result-object v9

    .line 32
    invoke-virtual {v9, v8}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    iget-object v10, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$correlationId:Ljava/lang/String;

    .line 40
    .line 41
    sget-object v11, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$RequestState;->EXECUTING:Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$RequestState;

    .line 42
    .line 43
    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    iget-object v9, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$codeMarkerManager:Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;

    .line 47
    .line 48
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    const/4 v9, 0x0

    .line 52
    :try_start_0
    iget-object v10, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$correlationId:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v11, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$commandParameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 55
    .line 56
    invoke-virtual {v11}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkType()Lcom/microsoft/identity/common/java/request/SdkType;

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    if-nez v11, :cond_0

    .line 61
    .line 62
    sget-object v11, Lcom/microsoft/identity/common/java/request/SdkType;->UNKNOWN:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 63
    .line 64
    :goto_0
    invoke-virtual {v11}, Lcom/microsoft/identity/common/java/request/SdkType;->getProductName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception v4

    .line 70
    goto/16 :goto_7

    .line 71
    .line 72
    :cond_0
    iget-object v11, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$commandParameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 73
    .line 74
    invoke-virtual {v11}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkType()Lcom/microsoft/identity/common/java/request/SdkType;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    goto :goto_0

    .line 79
    :goto_1
    iget-object v12, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$commandParameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 80
    .line 81
    invoke-virtual {v12}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkVersion()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    invoke-static {v10, v11, v12}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->initializeDiagnosticContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v8}, Lcom/microsoft/identity/common/java/net/CancellationSignal;->isCancelled()Z

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    if-eqz v10, :cond_2

    .line 93
    .line 94
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    const-string v4, "CommandDispatcher:submitSilent"

    .line 102
    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v7, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$correlationId:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v7, ", activeCount="

    .line 114
    .line 115
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-static {}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->getSilentRequestActiveCount()I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v7, ", queueSize="

    .line 126
    .line 127
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-static {}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$200()Ljava/util/concurrent/ExecutorService;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    check-cast v7, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 135
    .line 136
    invoke-virtual {v7}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-static {v4, v5}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .line 153
    .line 154
    invoke-static {}, Lcom/microsoft/identity/common/java/net/CancellationSignal;->access$getSThreadLocalSignal$cp()Ljava/lang/ThreadLocal;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 159
    .line 160
    .line 161
    invoke-static {}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$400()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    monitor-enter v4

    .line 166
    :try_start_1
    iget-object v0, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 167
    .line 168
    instance-of v0, v0, Lcom/microsoft/identity/common/java/commands/SilentTokenCommand;

    .line 169
    .line 170
    if-eqz v0, :cond_1

    .line 171
    .line 172
    invoke-static {}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$500()Ljava/util/concurrent/ConcurrentMap;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 177
    .line 178
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    .line 185
    .line 186
    if-nez v0, :cond_1

    .line 187
    .line 188
    const-string v0, "CommandDispatcher"

    .line 189
    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget-object v2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 196
    .line 197
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v2, " the calling application was "

    .line 209
    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    iget-object v2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 214
    .line 215
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getApplicationName()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-static {v0, v1, v9}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    .line 232
    .line 233
    iget-object v0, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 234
    .line 235
    invoke-static {v0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$600(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V

    .line 236
    .line 237
    .line 238
    goto :goto_2

    .line 239
    :catchall_1
    move-exception p0

    .line 240
    goto :goto_3

    .line 241
    :cond_1
    :goto_2
    iget-object p0, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$finalFuture:Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    .line 242
    .line 243
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;->setCleanedUp()V

    .line 244
    .line 245
    .line 246
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 247
    sget-object p0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    .line 248
    .line 249
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->clear()V

    .line 250
    .line 251
    .line 252
    return-void

    .line 253
    :goto_3
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 254
    throw p0

    .line 255
    :cond_2
    :try_start_3
    iget-object v6, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$codeMarkerManager:Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;

    .line 256
    .line 257
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 258
    .line 259
    .line 260
    :try_start_4
    iget-object v6, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 261
    .line 262
    invoke-static {v6}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$300(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Lcom/microsoft/identity/common/java/controllers/CommandResult;

    .line 263
    .line 264
    .line 265
    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 266
    :try_start_5
    iget-object v7, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$codeMarkerManager:Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;

    .line 267
    .line 268
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    const-string v7, "CommandDispatcher:submitSilent"

    .line 272
    .line 273
    new-instance v10, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    iget-object v5, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$correlationId:Ljava/lang/String;

    .line 279
    .line 280
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    const-string v5, ", with the status : "

    .line 284
    .line 285
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v6}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getStatus()Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    const-string v5, " is cacheable : "

    .line 300
    .line 301
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    iget-object v5, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 305
    .line 306
    instance-of v5, v5, Lcom/microsoft/identity/common/java/commands/SilentTokenCommand;

    .line 307
    .line 308
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    invoke-static {v7, v5}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    iget-object v5, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$finalFuture:Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    .line 319
    .line 320
    invoke-virtual {v5, v6}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setResult(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 321
    .line 322
    .line 323
    invoke-static {}, Lcom/microsoft/identity/common/java/net/CancellationSignal;->access$getSThreadLocalSignal$cp()Ljava/lang/ThreadLocal;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 328
    .line 329
    .line 330
    invoke-static {}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$400()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    monitor-enter v5

    .line 335
    :try_start_6
    iget-object v0, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 336
    .line 337
    instance-of v0, v0, Lcom/microsoft/identity/common/java/commands/SilentTokenCommand;

    .line 338
    .line 339
    if-eqz v0, :cond_3

    .line 340
    .line 341
    invoke-static {}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$500()Ljava/util/concurrent/ConcurrentMap;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 346
    .line 347
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 348
    .line 349
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    check-cast v0, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    .line 354
    .line 355
    if-nez v0, :cond_3

    .line 356
    .line 357
    const-string v0, "CommandDispatcher"

    .line 358
    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    iget-object v2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 365
    .line 366
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    const-string v2, " the calling application was "

    .line 378
    .line 379
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    iget-object v2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 383
    .line 384
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getApplicationName()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-static {v0, v1, v9}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 400
    .line 401
    .line 402
    iget-object v0, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 403
    .line 404
    invoke-static {v0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$600(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V

    .line 405
    .line 406
    .line 407
    goto :goto_4

    .line 408
    :catchall_2
    move-exception p0

    .line 409
    goto :goto_6

    .line 410
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$finalFuture:Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    .line 411
    .line 412
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;->setCleanedUp()V

    .line 413
    .line 414
    .line 415
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 416
    :goto_5
    sget-object v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    .line 417
    .line 418
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->clear()V

    .line 419
    .line 420
    .line 421
    goto/16 :goto_a

    .line 422
    .line 423
    :goto_6
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 424
    throw p0

    .line 425
    :catchall_3
    move-exception v4

    .line 426
    :try_start_8
    iget-object v5, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$codeMarkerManager:Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;

    .line 427
    .line 428
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 429
    .line 430
    .line 431
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 432
    :goto_7
    :try_start_9
    invoke-virtual {v8}, Lcom/microsoft/identity/common/java/net/CancellationSignal;->isCancelled()Z

    .line 433
    .line 434
    .line 435
    move-result v5

    .line 436
    if-eqz v5, :cond_4

    .line 437
    .line 438
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 443
    .line 444
    .line 445
    sget v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->SILENT_REQUEST_THREAD_POOL_SIZE:I

    .line 446
    .line 447
    const-string v0, "CommandDispatcher:submitSilent"

    .line 448
    .line 449
    iget-object v4, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$correlationId:Ljava/lang/String;

    .line 450
    .line 451
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    goto :goto_8

    .line 459
    :catchall_4
    move-exception v0

    .line 460
    goto/16 :goto_c

    .line 461
    .line 462
    :cond_4
    sget v1, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->SILENT_REQUEST_THREAD_POOL_SIZE:I

    .line 463
    .line 464
    const-string v1, "CommandDispatcher:submitSilent"

    .line 465
    .line 466
    iget-object v5, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$correlationId:Ljava/lang/String;

    .line 467
    .line 468
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    iget-object v0, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$finalFuture:Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    .line 476
    .line 477
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    .line 478
    .line 479
    invoke-direct {v1, v4}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setException(Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 483
    .line 484
    .line 485
    :goto_8
    invoke-static {}, Lcom/microsoft/identity/common/java/net/CancellationSignal;->access$getSThreadLocalSignal$cp()Ljava/lang/ThreadLocal;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 490
    .line 491
    .line 492
    invoke-static {}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$400()Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    monitor-enter v0

    .line 497
    :try_start_a
    iget-object v1, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 498
    .line 499
    instance-of v1, v1, Lcom/microsoft/identity/common/java/commands/SilentTokenCommand;

    .line 500
    .line 501
    if-eqz v1, :cond_5

    .line 502
    .line 503
    invoke-static {}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$500()Ljava/util/concurrent/ConcurrentMap;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    iget-object v2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 508
    .line 509
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 510
    .line 511
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v1

    .line 515
    check-cast v1, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    .line 516
    .line 517
    if-nez v1, :cond_5

    .line 518
    .line 519
    const-string v1, "CommandDispatcher"

    .line 520
    .line 521
    new-instance v2, Ljava/lang/StringBuilder;

    .line 522
    .line 523
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    iget-object v3, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 527
    .line 528
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 529
    .line 530
    .line 531
    move-result-object v3

    .line 532
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v3

    .line 536
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    const-string v3, " the calling application was "

    .line 540
    .line 541
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    iget-object v3, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 545
    .line 546
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 547
    .line 548
    .line 549
    move-result-object v3

    .line 550
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getApplicationName()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v3

    .line 554
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    invoke-static {v1, v2, v9}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 562
    .line 563
    .line 564
    iget-object v1, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 565
    .line 566
    invoke-static {v1}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$600(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V

    .line 567
    .line 568
    .line 569
    goto :goto_9

    .line 570
    :catchall_5
    move-exception p0

    .line 571
    goto :goto_b

    .line 572
    :cond_5
    :goto_9
    iget-object v1, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$finalFuture:Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    .line 573
    .line 574
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;->setCleanedUp()V

    .line 575
    .line 576
    .line 577
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 578
    goto/16 :goto_5

    .line 579
    .line 580
    :goto_a
    iget-object p0, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$codeMarkerManager:Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;

    .line 581
    .line 582
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 583
    .line 584
    .line 585
    return-void

    .line 586
    :goto_b
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 587
    throw p0

    .line 588
    :goto_c
    invoke-static {}, Lcom/microsoft/identity/common/java/net/CancellationSignal;->access$getSThreadLocalSignal$cp()Ljava/lang/ThreadLocal;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 593
    .line 594
    .line 595
    invoke-static {}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$400()Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v1

    .line 599
    monitor-enter v1

    .line 600
    :try_start_c
    iget-object v3, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 601
    .line 602
    instance-of v3, v3, Lcom/microsoft/identity/common/java/commands/SilentTokenCommand;

    .line 603
    .line 604
    if-eqz v3, :cond_6

    .line 605
    .line 606
    invoke-static {}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$500()Ljava/util/concurrent/ConcurrentMap;

    .line 607
    .line 608
    .line 609
    move-result-object v3

    .line 610
    iget-object v4, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 611
    .line 612
    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 613
    .line 614
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object v3

    .line 618
    check-cast v3, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    .line 619
    .line 620
    if-nez v3, :cond_6

    .line 621
    .line 622
    const-string v3, "CommandDispatcher"

    .line 623
    .line 624
    new-instance v4, Ljava/lang/StringBuilder;

    .line 625
    .line 626
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    iget-object v2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 630
    .line 631
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 632
    .line 633
    .line 634
    move-result-object v2

    .line 635
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v2

    .line 639
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    const-string v2, " the calling application was "

    .line 643
    .line 644
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    iget-object v2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 648
    .line 649
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 650
    .line 651
    .line 652
    move-result-object v2

    .line 653
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getApplicationName()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v2

    .line 657
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v2

    .line 664
    invoke-static {v3, v2, v9}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 665
    .line 666
    .line 667
    iget-object v2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 668
    .line 669
    invoke-static {v2}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$600(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V

    .line 670
    .line 671
    .line 672
    goto :goto_d

    .line 673
    :catchall_6
    move-exception p0

    .line 674
    goto :goto_e

    .line 675
    :cond_6
    :goto_d
    iget-object p0, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$finalFuture:Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    .line 676
    .line 677
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;->setCleanedUp()V

    .line 678
    .line 679
    .line 680
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 681
    sget-object p0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    .line 682
    .line 683
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->clear()V

    .line 684
    .line 685
    .line 686
    throw v0

    .line 687
    :goto_e
    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 688
    throw p0
.end method
