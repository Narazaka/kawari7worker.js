TARGET_JS = kawari7worker.js
SHIORI_NAME = kawari7
SHIORI_WORKER_CLASS = Kawari7WorkerClient
SHIORI_CLASS = Kawari7

SHIORI = node_modules/kawari7.js/kawari-750-kdt/src/shiori_js/kawari7.js
NATIVESHIORI = node_modules/nativeshiori/nativeshiori.js
ENCODING = node_modules/encoding-japanese/encoding.min.js
WORKERSERVER = node_modules/WorkerClientServer/WorkerServer.js
NATIVESHIORIWORKERSERVER = node_modules/NativeShioriWorker/NativeShioriWorkerServer.js

all: $(TARGET_JS)

$(TARGET_JS): client.coffee server.coffee $(SHIORI) $(NATIVESHIORI) $(ENCODING) $(WORKERSERVER) $(NATIVESHIORIWORKERSERVER)
	coffee make_worker_script_auto.coffee $^ $(SHIORI_NAME) $(SHIORI_WORKER_CLASS) $(SHIORI_CLASS) > $@

clean:
	rm *.js *.map

