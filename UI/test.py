    for i in range(len(ensemblRows)/50+1):
        query = '{ "ids" : ['
        for j in range(0,50):
            if i*50 + j < len(ensemblRows):
                query = query + '"'+ensemblRows[j]+'",'
            else:
                break
        query = query[:-1]
        query = query+'] }'

        r = requests.post(server+ext, headers=headers, data=query)

        if not r.ok:
          r.raise_for_status()
          sys.exit()

        decoded = r.json()
        #print repr(decoded)
        print len(decoded)
        print len(decoded[0])
